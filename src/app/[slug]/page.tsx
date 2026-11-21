import type { Metadata } from 'next';
import Link from 'next/link';
import { notFound } from 'next/navigation';
import { getPostBySlug, getComments, getPosts, getSettings } from '@/lib/db';
import { categoryToSlug, cleanExcerpt, getFormattedCoverUrl, toIsoDate } from '@/lib/utils';
import CommentSection from '@/components/CommentSection';
import Sidebar from '@/components/Sidebar';
import PostCard from '@/components/PostCard';
import Pagination from '@/components/Pagination';
import { Calendar, Tag } from 'lucide-react';

export const dynamic = 'force-static';

export async function generateStaticParams() {
  const posts = await getPosts();
  const postSlugs = posts.map((p) => ({ slug: p.slug }));
  const catSlugs = [
    { slug: 'notification' },
    { slug: 'answer-key' },
    { slug: 'admit-card' },
    { slug: 'result' },
    { slug: 'syllabus' },
  ];
  return [...catSlugs, ...postSlugs];
}

const POSTS_PER_PAGE = 5;

interface SlugPageProps {
  params: Promise<{
    slug: string;
  }>;
}

const CATEGORY_MAP: Record<string, string> = {
  'notification': 'Notification',
  'answer-key': 'Answer Key',
  'admit-card': 'Admit Card',
  'result': 'Result',
  'syllabus': 'Syllabus',
};

export async function generateMetadata({ params }: SlugPageProps): Promise<Metadata> {
  const resolvedParams = await params;
  const rawSlug = resolvedParams?.slug || '';
  const cleanSlug = decodeURIComponent(rawSlug).trim().toLowerCase();
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';

  // Check if it's a category
  if (CATEGORY_MAP[cleanSlug]) {
    const catName = CATEGORY_MAP[cleanSlug];
    const canonicalUrl = `${baseUrl}/${cleanSlug}`;
    const title = `${catName} - RRB Group D Answer Key 2026`;
    const description = `Browse latest ${catName} updates, official notices, and question paper analysis.`;

    return {
      title,
      description,
      alternates: {
        canonical: canonicalUrl,
      },
      openGraph: {
        title,
        description,
        url: canonicalUrl,
        type: 'website',
        siteName: 'RRB Group D Answer Key',
        images: [
          {
            url: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
            width: 1200,
            height: 630,
            alt: `${catName} - RRB Group D Answer Key`,
          },
        ],
      },
      twitter: {
        card: 'summary_large_image',
        title,
        description,
        images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
      },
    };
  }

  // Check if it's a single post
  const post = await getPostBySlug(cleanSlug);
  if (!post) {
    return {
      title: 'Article Not Found | RRB Group D Answer Key',
    };
  }

  const canonicalUrl = `${baseUrl}/${cleanSlug}`;
  const rawCover = getFormattedCoverUrl(post.cover_image);
  const coverUrl = rawCover.startsWith('http') ? rawCover : `${baseUrl}${rawCover.startsWith('/') ? '' : '/'}${rawCover}`;
  const excerpt = cleanExcerpt(post.excerpt || post.content, 160) || post.title;

  return {
    title: `${post.title} | RRB Group D Answer Key`,
    description: excerpt,
    alternates: {
      canonical: canonicalUrl,
    },
    openGraph: {
      title: post.title,
      description: excerpt,
      url: canonicalUrl,
      type: 'article',
      siteName: 'RRB Group D Answer Key',
      publishedTime: toIsoDate(post.created_at),
      authors: [post.author_name || 'Admin'],
      images: [
        {
          url: coverUrl,
          width: 1200,
          height: 630,
          alt: post.title,
        },
      ],
    },
    twitter: {
      card: 'summary_large_image',
      title: post.title,
      description: excerpt,
      images: [coverUrl],
    },
  };
}

export default async function SlugPage({ params }: SlugPageProps) {
  const resolvedParams = await params;
  const rawSlug = resolvedParams?.slug || '';
  const cleanSlug = decodeURIComponent(rawSlug).trim().toLowerCase();

  if (!cleanSlug) {
    notFound();
  }

  const allPosts = await getPosts();
  const settings = await getSettings();
  const showAds = settings.ads_status === '1';

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

  // --------------------------------------------------------------------------
  // CASE 1: ROOT LEVEL CATEGORY PAGE (e.g. /notification, /syllabus)
  // --------------------------------------------------------------------------
  const isCategory = CATEGORY_MAP[cleanSlug] || allCatNames.some((c: string) => categoryToSlug(c) === cleanSlug);

  if (isCategory) {
    const categoryPosts = await getPosts({ category: cleanSlug });
    const samplePost = categoryPosts[0];
    const displayTitle = samplePost
      ? samplePost.category
      : (CATEGORY_MAP[cleanSlug] || cleanSlug.split('-').map((w) => w.charAt(0).toUpperCase() + w.slice(1)).join(' '));

    const totalPosts = categoryPosts.length;
    const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);
    const currentPosts = categoryPosts.slice(0, POSTS_PER_PAGE);

    return (
      <div className="container">
        <div className="blog-layout">
          <div className="content-area">
            <div className="section-head">
              <h2 className="section-title">Category: {displayTitle}</h2>
            </div>

            <div id="blog-entries">
              {currentPosts.length === 0 ? (
                <p style={{ padding: '20px 0', color: '#666' }}>No posts found in this category.</p>
              ) : (
                currentPosts.map((post) => <PostCard key={post.id} post={post} />)
              )}
            </div>

            <Pagination
              currentPage={1}
              totalPages={totalPages}
              baseUrl={`/${cleanSlug}`}
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

  // --------------------------------------------------------------------------
  // CASE 2: SINGLE ARTICLE PAGE (e.g. /rrb-technician-grade-1...)
  // --------------------------------------------------------------------------
  const post = await getPostBySlug(cleanSlug);
  if (!post) {
    notFound();
  }

  const comments = await getComments(post.id);

  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';
  const currentUrl = `${baseUrl}/${post.slug}`;
  const rawCover = getFormattedCoverUrl(post.cover_image);
  const coverUrl = rawCover.startsWith('http') ? rawCover : `${baseUrl}${rawCover.startsWith('/') ? '' : '/'}${rawCover}`;

  const tagsList = post.tags
    ? post.tags.split(',').map((t) => t.trim()).filter(Boolean)
    : [];

  // 1. BlogPosting Schema (Google Rich Results / Discover)
  const articleSchema = {
    '@context': 'https://schema.org',
    '@type': 'BlogPosting',
    'headline': post.title,
    'description': cleanExcerpt(post.excerpt || post.content, 160) || post.title,
    'image': coverUrl,
    'datePublished': toIsoDate(post.created_at),
    'dateModified': toIsoDate(post.created_at),
    'author': {
      '@type': 'Person',
      'name': post.author_name || 'Admin',
    },
    'publisher': {
      '@type': 'Organization',
      'name': settings.site_title || 'RRB Group D Answer Key',
      'logo': {
        '@type': 'ImageObject',
        'url': settings.site_logo || 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
      },
    },
    'mainEntityOfPage': {
      '@type': 'WebPage',
      '@id': currentUrl,
    },
  };

  // 2. BreadcrumbList Schema
  const breadcrumbSchema = {
    '@context': 'https://schema.org',
    '@type': 'BreadcrumbList',
    'itemListElement': [
      {
        '@type': 'ListItem',
        'position': 1,
        'name': 'Home',
        'item': baseUrl,
      },
      {
        '@type': 'ListItem',
        'position': 2,
        'name': post.category || 'Updates',
        'item': `${baseUrl}/${categoryToSlug(post.category)}`,
      },
      {
        '@type': 'ListItem',
        'position': 3,
        'name': post.title,
        'item': currentUrl,
      },
    ],
  };

  return (
    <div className="container">
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(articleSchema) }}
      />
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{ __html: JSON.stringify(breadcrumbSchema) }}
      />
      <div className="blog-layout">
        
        {/* Main Content Area */}
        <div className="content-area">
          <article className="article-wrap">
            <header className="article-header">
              <div className="article-cats">
                <Link
                  href={`/${categoryToSlug(post.category)}`}
                  className="article-cat-tag"
                >
                  {post.category}
                </Link>
              </div>

              <h1 className="article-title">{post.title}</h1>

              <div className="article-meta">
                <span className="byline">by {post.author_name || 'Mangal'}</span>
                <span className="posted-on flex items-center gap-1">
                  <Calendar style={{ width: '14px', height: '14px' }} />{' '}
                  {post.created_at.split(' ')[0]}
                </span>
              </div>

              {post.cover_image && (
                <img
                  src={coverUrl}
                  alt={post.title}
                  className="article-cover"
                />
              )}
            </header>

            {/* Article Content */}
            <div
              className="article-body article-content"
              dangerouslySetInnerHTML={{ __html: post.content }}
            />

            {/* Tags Section */}
            {tagsList.length > 0 && (
              <div className="article-tags flex items-center gap-2 wrap" style={{ marginTop: '24px', padding: '16px 0', borderTop: '1px solid #e2e8f0', borderBottom: '1px solid #e2e8f0', flexWrap: 'wrap' }}>
                <span className="flex items-center gap-1 font-semibold text-gray-700" style={{ fontSize: '0.9rem', color: '#475569', marginRight: '6px' }}>
                  <Tag style={{ width: '15px', height: '15px' }} /> Tags:
                </span>
                {tagsList.map((t, idx) => (
                  <Link
                    key={idx}
                    href={`/blogs?q=${encodeURIComponent(t)}`}
                    className="tag-badge"
                    style={{
                      display: 'inline-block',
                      backgroundColor: '#f1f5f9',
                      color: '#0f172a',
                      fontSize: '0.825rem',
                      padding: '4px 12px',
                      borderRadius: '16px',
                      textDecoration: 'none',
                      fontWeight: 500,
                      border: '1px solid #cbd5e1',
                      transition: 'all 0.2s ease',
                    }}
                  >
                    #{t}
                  </Link>
                ))}
              </div>
            )}

            {/* Answer Key Calculator CTA Box */}
            <div
              style={{
                marginTop: '32px',
                marginBottom: '28px',
                padding: '24px 20px',
                background: '#f8fafc',
                borderRadius: '8px',
                border: '1px solid #e2e8f0',
                textAlign: 'center',
              }}
            >
              <h3 style={{ fontSize: '1.1rem', fontWeight: 800, color: '#0f172a', marginBottom: '6px' }}>
                Check Your RRB Group D Answer Key Marks &amp; Rank
              </h3>
              <p style={{ fontSize: '0.86rem', color: '#64748b', marginBottom: '16px', maxWidth: '520px', marginInline: 'auto' }}>
                Calculate your raw marks, negative marking deduction, and expected normalized shift score instantly.
              </p>
              <Link
                href="/answer-key-calculator"
                style={{
                  display: 'inline-flex',
                  alignItems: 'center',
                  gap: '8px',
                  padding: '12px 24px',
                  fontSize: '0.92rem',
                  fontWeight: 700,
                  background: 'linear-gradient(135deg, #0066ff 0%, #0044cc 100%)',
                  color: '#ffffff',
                  borderRadius: '6px',
                  textDecoration: 'none',
                  boxShadow: '0 4px 12px rgba(0, 102, 255, 0.25)',
                  transition: 'transform 0.15s ease',
                }}
              >
                Open Answer Key Calculator &rarr;
              </Link>
            </div>

            {/* Share Bar */}
            <div className="share-bar">
              <span className="share-label">Share:</span>
              <a
                href={`https://api.whatsapp.com/send?text=${encodeURIComponent(`${post.title} - ${currentUrl}`)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="share-btn share-wa"
              >
                WhatsApp
              </a>
              <a
                href={`https://t.me/share/url?url=${encodeURIComponent(currentUrl)}&text=${encodeURIComponent(post.title)}`}
                target="_blank"
                rel="noopener noreferrer"
                className="share-btn share-tg"
              >
                Telegram
              </a>
            </div>

            {/* Comments Section */}
            <CommentSection postId={post.id} initialComments={comments} />
          </article>
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
