import React from 'react';
import type { Metadata } from 'next';
import { getPosts, getSettings } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const dynamic = 'force-static';

export async function generateStaticParams() {
  return [
    { category: 'notification' },
    { category: 'answer-key' },
    { category: 'admit-card' },
    { category: 'result' },
    { category: 'syllabus' },
  ];
}

const POSTS_PER_PAGE = 5;

interface CategoryPageProps {
  params: Promise<{
    category: string;
  }>;
}

export async function generateMetadata({ params }: CategoryPageProps): Promise<Metadata> {
  const resolvedParams = await params;
  const rawCat = resolvedParams?.category || '';
  const categorySlug = decodeURIComponent(rawCat).trim().toLowerCase();

  const displayTitle = categorySlug
    .split('-')
    .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
    .join(' ');

  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';
  const title = `${displayTitle} - RRB Group D Answer Key 2026`;
  const canonicalUrl = `${baseUrl}/category/${categorySlug}`;

  return {
    title,
    description: `Browse latest ${displayTitle} updates, official notices, and question paper analysis for RRB Group D.`,
    alternates: {
      canonical: canonicalUrl,
    },
    openGraph: {
      title,
      description: `Browse latest ${displayTitle} updates, official notices, and question paper analysis for RRB Group D.`,
      url: canonicalUrl,
      type: 'website',
      siteName: 'RRB Group D Answer Key',
      images: [
        {
          url: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
          width: 1200,
          height: 630,
          alt: `${displayTitle} - RRB Group D Answer Key`,
        },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title,
      description: `Browse latest ${displayTitle} updates and official notices.`,
      images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
    },
  };
}

export default async function CategoryPage({ params }: CategoryPageProps) {
  const resolvedParams = await params;

  const rawCat = resolvedParams?.category || '';
  const categorySlug = decodeURIComponent(rawCat).trim().toLowerCase();
  const currentPage = 1;
  
  const categoryPosts = await getPosts({ category: categorySlug });
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

  const totalPosts = categoryPosts.length;
  const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);

  const startIndex = (currentPage - 1) * POSTS_PER_PAGE;
  const currentPosts = categoryPosts.slice(startIndex, startIndex + POSTS_PER_PAGE);

  // Display human-readable title
  const samplePost = categoryPosts[0];
  const displayTitle = samplePost
    ? samplePost.category
    : categorySlug
        .split('-')
        .map((w) => w.charAt(0).toUpperCase() + w.slice(1))
        .join(' ');

  const allPosts = await getPosts();
  const recentPosts = [...allPosts].slice(0, 5);
  const popularPosts = [...allPosts].sort((a, b) => (b.views || 0) - (a.views || 0)).slice(0, 5);

  const categoriesList = ['Notification', 'Answer Key', 'Admit Card', 'Result', 'Syllabus'];
  const categories = categoriesList.map((cat) => {
    const count = allPosts.filter((p) => categoryToSlug(p.category) === categoryToSlug(cat)).length;
    return { category: cat, count };
  });

  return (
    <div className="container">
      <div className="blog-layout">
        
        <div className="content-area">
          <div className="section-head">
            <h2 className="section-title">
              Category: {displayTitle} {currentPage > 1 ? `(Page ${currentPage})` : ''}
            </h2>
          </div>

          <div id="blog-entries">
            {currentPosts.length === 0 ? (
              <p style={{ padding: '20px 0', color: '#666' }}>No posts found in this category.</p>
            ) : (
              currentPosts.map((post) => <PostCard key={post.id} post={post} />)
            )}
          </div>

          {/* Pagination */}
          <Pagination
            currentPage={currentPage}
            totalPages={totalPages}
            baseUrl={`/category/${categorySlug}`}
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
