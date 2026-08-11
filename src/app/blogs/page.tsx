import React from 'react';
import { getPosts, getSettings } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const runtime = 'edge';
export const revalidate = 0;

const POSTS_PER_PAGE = 5;

interface BlogsPageProps {
  searchParams: Promise<{
    q?: string;
    page?: string;
  }>;
}

export default async function BlogsPage({ searchParams }: BlogsPageProps) {
  const resolvedSearchParams = await searchParams;
  const query = resolvedSearchParams?.q || '';
  const currentPage = Math.max(1, parseInt(resolvedSearchParams?.page || '1', 10));

  const searchPosts = await getPosts({ search: query || undefined });
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

  const totalPosts = searchPosts.length;
  const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);

  const startIndex = (currentPage - 1) * POSTS_PER_PAGE;
  const currentPosts = searchPosts.slice(startIndex, startIndex + POSTS_PER_PAGE);

  const allPosts = await getPosts();
  const recentPosts = [...allPosts].slice(0, 5);
  const popularPosts = [...allPosts].sort((a, b) => (b.views || 0) - (a.views || 0)).slice(0, 5);

  const categoriesList = ['Notification', 'Answer Key', 'Admit Card', 'Result', 'Syllabus'];
  const categories = categoriesList.map((cat) => {
    const count = allPosts.filter((p) => categoryToSlug(p.category) === categoryToSlug(cat)).length;
    return { category: cat, count };
  });

  const baseUrl = query ? `/blogs?q=${encodeURIComponent(query)}` : '/blogs';

  return (
    <div className="container">
      <div className="blog-layout">
        
        <div className="content-area">
          <div className="section-head">
            <h2 className="section-title">
              {query ? `Search Results for "${query}"` : 'All Posts'} {currentPage > 1 ? `(Page ${currentPage})` : ''}
            </h2>
          </div>

          <div id="blog-entries">
            {currentPosts.length === 0 ? (
              <p style={{ padding: '20px 0', color: '#666' }}>No posts found matching your search.</p>
            ) : (
              currentPosts.map((post) => <PostCard key={post.id} post={post} />)
            )}
          </div>

          {/* Pagination */}
          <Pagination
            currentPage={currentPage}
            totalPages={totalPages}
            baseUrl={baseUrl}
          />
        </div>

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
