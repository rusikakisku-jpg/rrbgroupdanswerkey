import React from 'react';
import type { Metadata } from 'next';
import TermsPage from '../terms/page';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Terms & Conditions | RRB Group D Answer Key Portal',
  description: 'Review the Terms and Conditions governing the use of RRB Group D Answer Key Portal, educational articles, and automated response sheet calculation utilities.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/terms',
  },
};

export default function TermsAndConditionsPage() {
  return <TermsPage />;
}
