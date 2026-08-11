import { NextResponse } from 'next/server';
import { getPosts, savePost, deletePost } from '@/lib/db';

export const runtime = 'edge';

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const category = searchParams.get('category') || undefined;
  const search = searchParams.get('q') || undefined;
  const limit = searchParams.get('limit') ? parseInt(searchParams.get('limit')!) : undefined;
  const status = searchParams.get('status') || undefined;

  const posts = await getPosts({ category, search, limit, status });
  return NextResponse.json(posts);
}

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { action, id, title, slug, content, excerpt, category, status, tags, cover_image } = body;

    if (action === 'delete') {
      if (!id) return NextResponse.json({ error: 'Post ID required' }, { status: 400 });
      await deletePost(id);
      return NextResponse.json({ success: true, message: 'Post deleted' });
    }

    if (!title || !slug || !content) {
      return NextResponse.json({ error: 'Title, slug, and content are required' }, { status: 400 });
    }

    const success = await savePost({ id, title, slug, content, excerpt, category, status, tags, cover_image });
    if (success) {
      return NextResponse.json({ success: true, message: 'Post saved successfully' });
    } else {
      return NextResponse.json({ error: 'Failed to save post' }, { status: 500 });
    }
  } catch (err) {
    return NextResponse.json({ error: 'Server error' }, { status: 500 });
  }
}
