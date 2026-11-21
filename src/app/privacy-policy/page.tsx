import React from 'react';
import type { Metadata } from 'next';
import PrivacyPage from '../privacy/page';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Privacy Policy | RRB Group D Answer Key Portal',
  description: 'Understand how RRB Group D Answer Key Portal collects, protects, and handles your data, including response sheet inputs, cookies, and Google AdSense disclosures.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/privacy',
  },
};

export default function PrivacyPolicyPage() {
  return <PrivacyPage />;
}
