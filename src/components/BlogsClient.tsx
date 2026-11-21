'use client';

import React from 'react';
import { useSearchParams } from 'next/navigation';
import { Post } from '@/lib/types';
import PostCard from '@/components/PostCard';
import Pagination from '@/components/Pagination';

interface BlogsClientProps {
  initialPosts: Post[];
}

const POSTS_PER_PAGE = 5;

export default function BlogsClient({ initialPosts }: BlogsClientProps) {
  const searchParams = useSearchParams();
  const query = searchParams.get('q') || '';
  const pageParam = searchParams.get('page');
  const currentPage = Math.max(1, parseInt(pageParam || '1', 10));

  let filtered = initialPosts;
  if (query.trim()) {
    const q = query.trim().toLowerCase();
    filtered = initialPosts.filter((post) => {
      const matchTitle = (post.title || '').toLowerCase().includes(q);
      const matchExcerpt = (post.excerpt || '').toLowerCase().includes(q);
      const matchTags = (post.tags || '').toLowerCase().includes(q);
      const matchCat = (post.category || '').toLowerCase().includes(q);
      return matchTitle || matchExcerpt || matchTags || matchCat;
    });
  }

  const totalPosts = filtered.length;
  const totalPages = Math.ceil(totalPosts / POSTS_PER_PAGE);

  const startIndex = (currentPage - 1) * POSTS_PER_PAGE;
  const currentPosts = filtered.slice(startIndex, startIndex + POSTS_PER_PAGE);

  const baseUrl = query ? `/blogs?q=${encodeURIComponent(query)}` : '/blogs';

  return (
    <>
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

      {totalPages > 1 && (
        <Pagination
          currentPage={currentPage}
          totalPages={totalPages}
          baseUrl={baseUrl}
        />
      )}
    </>
  );
}
