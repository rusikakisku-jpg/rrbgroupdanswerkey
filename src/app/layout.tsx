import type { Metadata } from 'next';
import './globals.css';
import Header from '@/components/Header';
import Footer from '@/components/Footer';

export const metadata: Metadata = {
  title: 'RRB Group D Answer Key - Notification,Answer key,Result',
  description: 'Official Railway Recruitment Board RRB Group D Answer Key, Cut Off Marks, Question Paper PDF, CBT Syllabus & Result Updates 2026.',
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <head>
        {/* Speed Optimization: Preconnect & DNS-Prefetch for Fonts & Cloudflare R2 CDN */}
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link rel="dns-prefetch" href="https://rrbgroupdanswerkey.rusikakisku.workers.dev" />
        <link rel="preconnect" href="https://rrbgroupdanswerkey.rusikakisku.workers.dev" crossOrigin="anonymous" />
        
        <link
          href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
          rel="stylesheet"
        />
        <link rel="icon" href="https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/favicon_1784561384_6a5e3ee8e8ce5.png" />
      </head>
      <body>
        <Header />
        <main className="main-content">{children}</main>
        <Footer />
      </body>
    </html>
  );
}
