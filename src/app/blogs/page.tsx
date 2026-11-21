import type { Metadata } from 'next';
import { getPosts, getSettings } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';
import PostCard from '@/components/PostCard';
import Sidebar from '@/components/Sidebar';
import Pagination from '@/components/Pagination';

export const revalidate = 0;

const POSTS_PER_PAGE = 5;

interface BlogsPageProps {
  searchParams: Promise<{
    q?: string;
    page?: string;
  }>;
}

export async function generateMetadata({ searchParams }: BlogsPageProps): Promise<Metadata> {
  const resolvedSearchParams = searchParams ? await Promise.resolve(searchParams) : {};
  const query = String(resolvedSearchParams?.q || '').trim();
  const page = Math.max(1, parseInt(String(resolvedSearchParams?.page || '1'), 10));

  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';
  let title = 'Latest Railway & RRB Group D Articles, Updates & Answer Key Analysis';
  let canonicalUrl = `${baseUrl}/blogs`;

  if (query) {
    title = `Articles matching "${query}" | RRB Group D Answer Key`;
    canonicalUrl = `${baseUrl}/blogs?q=${encodeURIComponent(query)}`;
  } else if (page > 1) {
    title = `Latest Updates & Answer Key Analysis - Page ${page} | RRB Group D Answer Key`;
    canonicalUrl = `${baseUrl}/blogs?page=${page}`;
  }

  return {
    title,
    description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends for RRB Group D & Railway examinations.',
    alternates: {
      canonical: canonicalUrl,
    },
    openGraph: {
      title,
      description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends.',
      url: canonicalUrl,
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
      title,
      description: 'Read detailed guides, normalization analysis, answer key verification steps, and category cut-off trends.',
      images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
    },
  };
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
          hiddenCategories={settings.hidden_categories || ''}
        />

      </div>
    </div>
  );
}
