'use client';

import React from 'react';
import Link from 'next/link';
import { Calendar } from 'lucide-react';
import { Post } from '@/lib/types';
import { categoryToSlug, cleanExcerpt, getFormattedCoverUrl } from '@/lib/utils';

interface PostCardProps {
  post: Post;
}

export default function PostCard({ post }: PostCardProps) {
  const coverUrl = getFormattedCoverUrl(post.cover_image);
  const excerptText = cleanExcerpt(post.excerpt || post.content, 150);
  const categorySlug = categoryToSlug(post.category);

  return (
    <article className="hm-entry">
      
      {/* Thumbnail */}
      <div className="post-thumbnail">
        <Link href={`/${post.slug}`}>
          <img
            src={coverUrl}
            alt={post.title}
            loading="lazy"
            decoding="async"
          />
        </Link>
      </div>

      {/* Entry Body */}
      <div className="entry-body">
        
        {/* Category badge */}
        <div className="post-categories">
          <Link href={`/${categorySlug}`}>
            {post.category}
          </Link>
        </div>

        {/* Title */}
        <h2 className="entry-title">
          <Link href={`/${post.slug}`}>
            {post.title}
          </Link>
        </h2>

        {/* Meta info */}
        <div className="entry-meta flex items-center gap-3">
          <span className="byline">by {post.author_name || 'Mangal'}</span>
          <span className="posted-on flex items-center gap-1">
            <Calendar style={{ width: '13px', height: '13px' }} />{' '}
            {post.created_at.split(' ')[0]}
          </span>
        </div>

        {/* Excerpt */}
        {excerptText && (
          <p className="entry-excerpt">
            {excerptText}
          </p>
        )}

        {/* Read More Link */}
        <div style={{ marginTop: '12px' }}>
          <Link href={`/${post.slug}`} className="read-more-link">
            Read More &rarr;
          </Link>
        </div>

      </div>

    </article>
  );
}
