'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { Search, Calculator } from 'lucide-react';
import { Post } from '@/lib/types';
import { categoryToSlug } from '@/lib/utils';

interface CategoryItem {
  category: string;
  count: number;
}

interface SidebarProps {
  recentPosts?: Post[];
  popularPosts?: Post[];
  categories?: CategoryItem[];
  showAds?: boolean;
}

export default function Sidebar({
  recentPosts = [],
  popularPosts = [],
  categories = [
    { category: 'Notification', count: 4 },
    { category: 'Answer Key', count: 0 },
    { category: 'Admit Card', count: 0 },
    { category: 'Result', count: 0 },
    { category: 'Syllabus', count: 2 },
  ],
  showAds = false,
}: SidebarProps) {
  const [searchTerm, setSearchTerm] = useState('');
  const router = useRouter();

  const handleSearch = (e: React.FormEvent) => {
    e.preventDefault();
    if (searchTerm.trim()) {
      router.push(`/blogs?q=${encodeURIComponent(searchTerm.trim())}`);
    }
  };

  const getCoverUrl = (cover_image?: string | null) => {
    if (!cover_image) return '/uploads/default-cover.jpg';
    return cover_image.startsWith('/') || cover_image.startsWith('http')
      ? cover_image
      : `/${cover_image}`;
  };

  return (
    <aside className="sidebar">
      
      {/* Answer Key Calculator Button Widget (Above Search) */}
      <div className="widget widget-calc" style={{ marginBottom: '24px' }}>
        <Link
          href="/answer-key-calculator"
          className="calc-btn-link"
          style={{
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            gap: '10px',
            width: '100%',
            padding: '14px 20px',
            background: 'linear-gradient(135deg, #0066ff 0%, #0044cc 100%)',
            color: '#ffffff',
            fontSize: '0.95rem',
            fontWeight: 700,
            borderRadius: '8px',
            textDecoration: 'none',
            boxShadow: '0 4px 12px rgba(0, 102, 255, 0.25)',
            transition: 'all 0.2s ease',
          }}
        >
          <Calculator style={{ width: '20px', height: '20px' }} />
          Answer Key Calculator
        </Link>
      </div>

      {/* Search Widget */}
      <div className="widget widget-search">
        <h3 className="widget-title">Search</h3>
        <form onSubmit={handleSearch} className="search-form">
          <input
            type="search"
            className="search-input"
            placeholder="Search articles..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          <button type="submit" className="search-btn" aria-label="Submit Search">
            <Search style={{ width: '16px', height: '16px' }} />
          </button>
        </form>
      </div>

      {/* Ad Widget 300x250 (Only rendered if showAds is true) */}
      {showAds && (
        <div className="widget widget-ad">
          <div className="ad-card-300">
            <div className="ad-title">Google AdSense</div>
            <div className="ad-size">300x250</div>
          </div>
        </div>
      )}

      {/* Recent Posts Widget */}
      {recentPosts.length > 0 && (
        <div className="widget widget-popular">
          <h3 className="widget-title">Recent Posts</h3>
          <ul className="popular-posts-list">
            {recentPosts.map((post) => (
              <li key={post.id} className="popular-item">
                <Link href={`/${post.slug}`} style={{ flexShrink: 0, display: 'block' }}>
                  <img
                    src={getCoverUrl(post.cover_image)}
                    alt={post.title}
                    className="popular-thumb"
                    style={{ width: '80px', height: '55px', objectFit: 'cover', objectPosition: 'center', borderRadius: '6px', display: 'block' }}
                  />
                </Link>
                <div className="popular-info">
                  <Link href={`/${post.slug}`} className="popular-title-link">
                    {post.title}
                  </Link>
                  <span className="popular-date">{post.created_at.split(' ')[0]}</span>
                </div>
              </li>
            ))}
          </ul>
        </div>
      )}

      {/* Popular Posts Widget */}
      {popularPosts.length > 0 && (
        <div className="widget widget-popular">
          <h3 className="widget-title">Popular Posts</h3>
          <ul className="popular-posts-list">
            {popularPosts.map((post) => (
              <li key={post.id} className="popular-item">
                <Link href={`/${post.slug}`} style={{ flexShrink: 0, display: 'block' }}>
                  <img
                    src={getCoverUrl(post.cover_image)}
                    alt={post.title}
                    className="popular-thumb"
                    style={{ width: '80px', height: '55px', objectFit: 'cover', objectPosition: 'center', borderRadius: '6px', display: 'block' }}
                  />
                </Link>
                <div className="popular-info">
                  <Link href={`/${post.slug}`} className="popular-title-link">
                    {post.title}
                  </Link>
                  <span className="popular-date">{post.created_at.split(' ')[0]}</span>
                </div>
              </li>
            ))}
          </ul>
        </div>
      )}

      {/* Categories Widget */}
      <div className="widget widget-categories">
        <h3 className="widget-title">Categories</h3>
        <ul className="cat-list">
          {categories.map((cat) => (
            <li key={cat.category} className="cat-item">
              <Link href={`/${categoryToSlug(cat.category)}`} className="cat-link">
                <span>{cat.category}</span>
              </Link>
            </li>
          ))}
        </ul>
      </div>

    </aside>
  );
}
