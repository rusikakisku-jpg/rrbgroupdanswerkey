import React from 'react';
import type { Metadata } from 'next';
import { getPosts, getSettings, categoryToSlug } from '@/lib/db';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const dynamic = 'force-static';

const POSTS_PER_PAGE = 5;

interface HomePageProps {
  searchParams: Promise<{
    page?: string;
  }>;
}

export async function generateMetadata({ searchParams }: HomePageProps): Promise<Metadata> {
  const resolvedSearchParams = searchParams ? await Promise.resolve(searchParams) : {};
  const currentPage = Math.max(1, parseInt(resolvedSearchParams?.page || '1', 10));
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';

  const title = currentPage > 1
    ? `RRB Group D Answer Key 2026 - Latest Updates (Page ${currentPage})`
    : 'RRB Group D Answer Key 2026 - Notification, Answer Key, Cut Off & Result';

  const canonicalUrl = currentPage > 1 ? `${baseUrl}/page/${currentPage}` : baseUrl;

  return {
    title,
    description: 'Check official Railway Recruitment Board RRB Group D Answer Key, candidate response sheet link, shift-wise difficulty analysis, raw marks, and category cut off 2026.',
    alternates: {
      canonical: canonicalUrl,
    },
    openGraph: {
      title,
      description: 'Check official Railway Recruitment Board RRB Group D Answer Key, candidate response sheet link, shift-wise difficulty analysis, raw marks, and category cut off 2026.',
      url: canonicalUrl,
      type: 'website',
      siteName: 'RRB Group D Answer Key',
      images: [
        {
          url: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
          width: 1200,
          height: 630,
          alt: 'RRB Group D Answer Key',
        },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title,
      description: 'Check official Railway Recruitment Board RRB Group D Answer Key, candidate response sheet link, shift-wise difficulty analysis, raw marks, and category cut off 2026.',
      images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
    },
  };
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

  // Build category list from settings, filter out hidden ones
  const allCatNames = (settings.site_categories || 'Notification,Answer Key,Admit Card,Result,Syllabus')
    .split(',').map((c: string) => c.trim()).filter(Boolean);
  const hiddenCatNames = (settings.hidden_categories || '')
    .split(',').map((c: string) => c.trim().toLowerCase()).filter(Boolean);
  const visibleCatList = allCatNames.filter((c: string) => !hiddenCatNames.includes(c.toLowerCase()));

  const categories = visibleCatList.map((cat: string) => {
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
          hiddenCategories={settings.hidden_categories || ''}
        />

      </div>
    </div>
  );
}
