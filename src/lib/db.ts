import { Post, Comment, Setting } from './types';
import { categoryToSlug } from './utils';
import dbFallback from '../data/db.json';

// Target Cloudflare Worker API Base Endpoint
const API_BASE = process.env.NEXT_PUBLIC_API_URL || 'https://rrbgroupdanswerkey.rusikakisku.workers.dev';

export { categoryToSlug };

export async function getPosts(options?: { category?: string; status?: string; limit?: number; search?: string; order?: 'asc' | 'desc' }): Promise<Post[]> {
  try {
    const params = new URLSearchParams();
    if (options?.category) params.append('category', options.category);
    if (options?.search) params.append('q', options.search);
    if (options?.status) params.append('status', options.status);
    if (options?.limit) params.append('limit', options.limit.toString());
    if (options?.order) params.append('order', options.order);

    const res = await fetch(`${API_BASE}/api/posts?${params.toString()}`, {
      next: { revalidate: 60 },
    });
    if (res.ok) {
      const data = await res.json();
      if (Array.isArray(data) && data.length > 0) {
        return data;
      }
    }
  } catch (err) {
    console.error('API Error in getPosts:', err);
  }

  // Graceful fallback to static db.json so home section never displays blank
  try {
    let posts = (dbFallback.posts || []) as unknown as Post[];
    if (options?.category) {
      const catSlug = categoryToSlug(options.category);
      posts = posts.filter(p => categoryToSlug(p.category) === catSlug);
    }
    if (options?.search) {
      const q = options.search.toLowerCase();
      posts = posts.filter(p => (p.title || '').toLowerCase().includes(q) || (p.excerpt || '').toLowerCase().includes(q));
    }
    if (options?.limit) {
      posts = posts.slice(0, options.limit);
    }
    return posts;
  } catch (e) {
    return [];
  }
}

export async function getPostBySlug(slug: string): Promise<Post | null> {
  if (!slug) return null;
  const cleanSlug = slug.trim().toLowerCase();
  try {
    const res = await fetch(`${API_BASE}/api/posts/${encodeURIComponent(cleanSlug)}`, {
      next: { revalidate: 60 },
    });
    if (res.ok) {
      const data = await res.json();
      if (data && data.slug) return data;
    }
  } catch (err) {
    console.error('API Error in getPostBySlug:', err);
  }

  // Fallback to static db.json
  try {
    const posts = (dbFallback.posts || []) as unknown as Post[];
    const match = posts.find(p => p.slug && p.slug.toLowerCase() === cleanSlug);
    return match || null;
  } catch (e) {
    return null;
  }
}

export async function incrementViews(postId: number): Promise<void> {
  // Handled automatically by Cloudflare Worker API on GET /api/posts/:slug
}

export async function getComments(postId: number): Promise<Comment[]> {
  try {
    const res = await fetch(`${API_BASE}/api/comments?post_id=${postId}`, {
      next: { revalidate: 30 },
    });
    if (res.ok) {
      return await res.json();
    }
    return [];
  } catch (err) {
    console.error('API Error in getComments:', err);
    return [];
  }
}

export async function addComment(data: { post_id: number; author_name: string; author_email: string; content: string }): Promise<boolean> {
  try {
    const res = await fetch(`${API_BASE}/api/comments`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });
    return res.ok;
  } catch (err) {
    console.error('API Error in addComment:', err);
    return false;
  }
}

export async function addSubscriber(email: string): Promise<boolean> {
  try {
    const res = await fetch(`${API_BASE}/api/subscribe`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email }),
    });
    return res.ok;
  } catch (err) {
    console.error('API Error in addSubscriber:', err);
    return false;
  }
}

export async function getSettings(): Promise<Record<string, string>> {
  try {
    const res = await fetch(`${API_BASE}/api/settings`, {
      next: { revalidate: 300 },
    });
    if (res.ok) {
      const data = await res.json();
      if (data && typeof data === 'object' && Object.keys(data).length > 0) {
        return data;
      }
    }
  } catch (err) {
    console.error('API Error in getSettings:', err);
  }

  return {
    site_title: 'RRB Group D Answer Key',
    site_tagline: 'Notification,Answer key,Result',
    site_description: 'Official Railway Recruitment Board RRB Group D Answer Key, Cut Off Marks, Question Paper PDF, CBT Syllabus & Result Updates 2026.',
    site_categories: 'Notification, Answer Key, Admit Card, Result, Syllabus',
    ads_status: '0',
    hidden_categories: 'Admit Card, Result, Answer Key',
    site_favicon: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/favicon_1784561384_6a5e3ee8e8ce5.png',
    site_logo: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
  };
}

export async function updateSettings(data: Record<string, string>): Promise<boolean> {
  try {
    const res = await fetch(`${API_BASE}/api/admin/settings`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });
    return res.ok;
  } catch (err) {
    console.error('API Error in updateSettings:', err);
    return false;
  }
}

export async function getAllPostsAdmin(): Promise<Post[]> {
  return getPosts({ status: 'all' });
}

export async function savePost(data: Partial<Post>): Promise<boolean> {
  try {
    const res = await fetch(`${API_BASE}/api/admin/posts`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(data),
    });
    return res.ok;
  } catch (err) {
    console.error('API Error in savePost:', err);
    return false;
  }
}

export async function deletePost(id: number): Promise<boolean> {
  try {
    const res = await fetch(`${API_BASE}/api/admin/posts`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ action: 'delete', id }),
    });
    return res.ok;
  } catch (err) {
    console.error('API Error in deletePost:', err);
    return false;
  }
}
