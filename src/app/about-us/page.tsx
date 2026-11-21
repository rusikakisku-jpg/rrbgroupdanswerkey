import React from 'react';
import type { Metadata } from 'next';
import AboutPage from '../about/page';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'About Us | RRB Group D Answer Key Portal',
  description: 'Learn about RRB Group D Answer Key Portal, an independent educational resource and automated score analysis utility for Railway Recruitment examination aspirants.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/about',
  },
};

export default function AboutUsPage() {
  return <AboutPage />;
}
