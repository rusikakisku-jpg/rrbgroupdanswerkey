import React from 'react';
import type { Metadata } from 'next';
import { notFound } from 'next/navigation';
import { getPosts, getSettings, categoryToSlug } from '@/lib/db';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const dynamic = 'force-static';

export async function generateStaticParams() {
  const posts = await getPosts();
  const totalPages = Math.max(1, Math.ceil(posts.length / POSTS_PER_PAGE));
  const paths = [];
  for (let i = 1; i <= Math.max(totalPages, 5); i++) {
    paths.push({ page: String(i) });
  }
  return paths;
}

const POSTS_PER_PAGE = 5;

interface PageRouteProps {
  params: Promise<{
    page: string;
  }>;
}

export async function generateMetadata({ params }: PageRouteProps): Promise<Metadata> {
  const resolvedParams = await params;
  const pageNum = parseInt(resolvedParams?.page || '1', 10);
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';
  const canonicalUrl = `${baseUrl}/page/${pageNum}`;

  return {
    title: `Latest Exam Updates & Answer Key Analysis - Page ${pageNum} | RRB Group D Answer Key`,
    description: `Browse latest official Railway Recruitment Board RRB Group D notices, cut-off analysis, and question paper solutions on Page ${pageNum}.`,
    alternates: {
      canonical: canonicalUrl,
    },
    openGraph: {
      title: `Latest Exam Updates & Answer Key Analysis - Page ${pageNum} | RRB Group D Answer Key`,
      description: `Browse latest official Railway Recruitment Board RRB Group D notices, cut-off analysis, and question paper solutions on Page ${pageNum}.`,
      url: canonicalUrl,
      type: 'website',
      siteName: 'RRB Group D Answer Key',
    },
  };
}

export default async function HomePagePaginated({ params }: PageRouteProps) {
  const resolvedParams = await params;
  const currentPage = parseInt(resolvedParams?.page || '1', 10);

  if (isNaN(currentPage) || currentPage < 1) {
    notFound();
  }

  const allPosts = await getPosts();
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

  const totalPosts = allPosts.length;
  const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);

  if (currentPage > totalPages && totalPages > 0) {
    notFound();
  }

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
            <h2 className="section-title">Latest Exam Updates</h2>
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
