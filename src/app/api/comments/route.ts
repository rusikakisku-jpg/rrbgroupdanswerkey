import { NextResponse } from 'next/server';
import { getComments, addComment } from '@/lib/db';

export async function GET(request: Request) {
  const { searchParams } = new URL(request.url);
  const postId = searchParams.get('post_id');
  if (!postId) return NextResponse.json([], { status: 400 });

  const comments = await getComments(parseInt(postId));
  return NextResponse.json(comments);
}

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { post_id, author_name, author_email, content } = body;

    if (!post_id || !author_name || !author_email || !content) {
      return NextResponse.json({ error: 'All fields are required' }, { status: 400 });
    }

    const success = await addComment({ post_id, author_name, author_email, content });
    if (success) {
      return NextResponse.json({ success: true, message: 'Comment submitted successfully' });
    } else {
      return NextResponse.json({ error: 'Failed to add comment' }, { status: 500 });
    }
  } catch (err) {
    return NextResponse.json({ error: 'Server error' }, { status: 500 });
  }
}
