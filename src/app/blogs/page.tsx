import type { Metadata } from 'next';
import { Suspense } from 'react';
import { getPosts, getSettings } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';
import Sidebar from '@/components/Sidebar';
import BlogsClient from '@/components/BlogsClient';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Latest Railway & RRB Group D Articles, Updates & Answer Key Analysis',
  description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends for RRB Group D & Railway examinations.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/blogs',
  },
  openGraph: {
    title: 'Latest Railway & RRB Group D Articles, Updates & Answer Key Analysis',
    description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends.',
    url: 'https://rrbgroupdanswerkey.com/blogs',
    type: 'website',
    siteName: 'RRB Group D Answer Key',
    images: [
      {
        url: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
        width: 1200,
        height: 630,
        alt: 'RRB Group D Answer Key Blog',
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'Latest Railway & RRB Group D Articles, Updates & Answer Key Analysis',
    description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends.',
    images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
  },
};

export default async function BlogsPage() {
  const allPosts = await getPosts();
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

  const recentPosts = [...allPosts].slice(0, 5);
  const popularPosts = [...allPosts].sort((a, b) => (b.views || 0) - (a.views || 0)).slice(0, 5);

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
        <div className="content-area">
          <Suspense fallback={<div>Loading articles...</div>}>
            <BlogsClient initialPosts={allPosts} />
          </Suspense>
        </div>

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
