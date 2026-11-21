import React from 'react';
import type { Metadata } from 'next';
import ContactPage from '../contact/page';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Contact Us | RRB Group D Answer Key Portal',
  description: 'Contact the RRB Group D Answer Key Portal support team for assistance, response sheet queries, or feedback.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/contact',
  },
};

export default function ContactUsPage() {
  return <ContactPage />;
}
