/**
 * Cloudflare D1 Database Adapter for Next.js
 * Used when deploying to Cloudflare Pages / Workers via @cloudflare/next-on-pages
 */

export interface D1Database {
  prepare(query: string): D1PreparedStatement;
}

export interface D1PreparedStatement {
  bind(...values: any[]): D1PreparedStatement;
  all<T = any>(): Promise<{ results: T[] }>;
  first<T = any>(colName?: string): Promise<T | null>;
  run(): Promise<{ success: boolean }>;
}

export async function getPostsD1(db: D1Database, category?: string, status = 'publish') {
  let query = 'SELECT * FROM posts WHERE status = ?';
  const params: any[] = [status];

  if (category && category.toLowerCase() !== 'all') {
    query += ' AND LOWER(category) = LOWER(?)';
    params.push(category.replace(/-/g, ' '));
  }

  query += ' ORDER BY id DESC';
  const stmt = db.prepare(query).bind(...params);
  const { results } = await stmt.all();
  return results;
}

export async function getPostBySlugD1(db: D1Database, slug: string) {
  const stmt = db.prepare('SELECT * FROM posts WHERE LOWER(slug) = LOWER(?) LIMIT 1').bind(slug);
  const { results } = await stmt.all();
  return results[0] || null;
}

export async function incrementViewsD1(db: D1Database, postId: number) {
  await db.prepare('UPDATE posts SET views = views + 1 WHERE id = ?').bind(postId).run();
}
