import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'RRB Group D Answer Key Calculator 2026 - Check Marks & Shift Rank',
  description: 'Calculate your official RRB Group D raw marks, negative marks, section-wise accuracy, and estimated shift percentile score instantly.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/answer-key-calculator',
  },
  openGraph: {
    title: 'RRB Group D Answer Key Calculator 2026 - Check Marks & Shift Rank',
    description: 'Calculate your official RRB Group D raw marks, negative marks, section-wise accuracy, and estimated shift percentile score instantly.',
    url: 'https://rrbgroupdanswerkey.com/answer-key-calculator',
    type: 'website',
    siteName: 'RRB Group D Answer Key',
    images: [
      {
        url: 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
        width: 1200,
        height: 630,
        alt: 'RRB Group D Answer Key Calculator',
      },
    ],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'RRB Group D Answer Key Calculator 2026 - Check Marks & Shift Rank',
    description: 'Calculate your official RRB Group D raw marks, negative marks, and shift rank instantly.',
    images: ['https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png'],
  },
};

export default function CalculatorLayout({ children }: { children: React.ReactNode }) {
  return <>{children}</>;
}
