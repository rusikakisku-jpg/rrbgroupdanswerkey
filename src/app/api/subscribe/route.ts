import { NextResponse } from 'next/server';
import { addSubscriber } from '@/lib/db';

export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { email } = body;

    if (!email || !email.includes('@')) {
      return NextResponse.json({ error: 'Valid email is required' }, { status: 400 });
    }

    const success = await addSubscriber(email);
    if (success) {
      return NextResponse.json({ success: true, message: 'Subscribed successfully' });
    } else {
      return NextResponse.json({ error: 'Failed to subscribe' }, { status: 500 });
    }
  } catch (err) {
    return NextResponse.json({ error: 'Server error' }, { status: 500 });
  }
}
