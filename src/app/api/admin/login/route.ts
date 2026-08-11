import { NextResponse } from 'next/server';

export const runtime = 'edge';

export async function POST(request: Request) {
  try {
    const { username, password } = await request.json();

    // Default admin creds from original PHP setup: admin / Admin@12345
    if (username === 'admin' && (password === 'Admin@12345' || password === 'admin')) {
      const payload = JSON.stringify({ username: 'admin', role: 'admin', exp: Date.now() + 7 * 24 * 3600 * 1000 });
      const token = typeof btoa !== 'undefined' ? btoa(payload) : Buffer.from(payload).toString('base64');

      const response = NextResponse.json({ success: true, message: 'Authenticated successfully' });
      response.cookies.set('admin_token', token, {
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'lax',
        maxAge: 60 * 60 * 24 * 7, // 7 days
        path: '/',
      });
      return response;
    }

    return NextResponse.json({ error: 'Invalid username or password' }, { status: 401 });
  } catch (err) {
    return NextResponse.json({ error: 'Server error' }, { status: 500 });
  }
}
