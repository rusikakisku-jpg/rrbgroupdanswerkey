import React from 'react';
import { getPosts, getSettings, categoryToSlug } from '@/lib/db';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const runtime = 'edge';
export const revalidate = 0;

const POSTS_PER_PAGE = 5;

interface HomePageProps {
  searchParams: Promise<{
    page?: string;
  }>;
}

export default async function HomePage({ searchParams }: HomePageProps) {
  const resolvedSearchParams = await searchParams;
  const currentPage = Math.max(1, parseInt(resolvedSearchParams?.page || '1', 10));

  const allPosts = await getPosts();
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

  const totalPosts = allPosts.length;
  const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);

  const startIndex = (currentPage - 1) * POSTS_PER_PAGE;
  const currentPosts = allPosts.slice(startIndex, startIndex + POSTS_PER_PAGE);

  const recentPosts = allPosts.slice(0, 5);
  const popularPosts = [...allPosts].sort((a, b) => (b.views || 0) - (a.views || 0)).slice(0, 5);

  const categoriesList = ['Notification', 'Answer Key', 'Admit Card', 'Result', 'Syllabus'];
  const categories = categoriesList.map((cat) => {
    const count = allPosts.filter((p) => categoryToSlug(p.category) === categoryToSlug(cat)).length;
    return { category: cat, count };
  });

  return (
    <div className="container">
      <div className="blog-layout">
        
        {/* Main Content Area */}
        <div className="content-area">
          <div className="section-head">
            <h2 className="section-title">
              {currentPage > 1 ? `Latest Posts (Page ${currentPage})` : 'Latest Posts'}
            </h2>
          </div>

          <div id="blog-entries">
            {currentPosts.length === 0 ? (
              <p style={{ padding: '20px 0', color: '#666' }}>No published posts found.</p>
            ) : (
              currentPosts.map((post) => <PostCard key={post.id} post={post} />)
            )}
          </div>

          {/* Pagination */}
          <Pagination currentPage={currentPage} totalPages={totalPages} baseUrl="" />
        </div>

        {/* Sidebar */}
        <Sidebar
          recentPosts={recentPosts}
          popularPosts={popularPosts}
          categories={categories}
          showAds={showAds}
        />

      </div>
    </div>
  );
}
