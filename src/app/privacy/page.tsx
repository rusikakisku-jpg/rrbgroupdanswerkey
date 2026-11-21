import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Privacy Policy | RRB Group D Answer Key Portal',
  description: 'Understand how RRB Group D Answer Key Portal collects, protects, and handles your data, including response sheet inputs, cookies, and Google AdSense disclosures.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/privacy',
  },
  openGraph: {
    title: 'Privacy Policy | RRB Group D Answer Key Portal',
    description: 'Understand how RRB Group D Answer Key Portal collects, protects, and handles your data, including response sheet inputs, cookies, and Google AdSense disclosures.',
    url: 'https://rrbgroupdanswerkey.com/privacy',
    type: 'website',
  },
};

export default function PrivacyPage() {
  return (
    <div className="container static-page-wrapper">
      <div className="static-page-card">
        <h1 className="static-page-title">Privacy Policy</h1>
        <p className="static-last-updated">Last updated: 01 November 2026</p>

        <p className="static-lead">
          At <strong>RRB Group D Answer Key Portal</strong> (accessible at{' '}
          <Link href="/" style={{ color: '#0066ff', textDecoration: 'underline', fontWeight: 600 }}>
            rrbgroupdanswerkey.com
          </Link>
          ), protecting the privacy and personal data of our visitors and railway exam candidates is among our highest priorities. This Privacy Policy details the types of information we collect, how it is processed and protected, our use of cookies and third-party advertising vendors (including Google AdSense), and your rights under data protection regulations.
        </p>

        <div>
          <h2 className="static-section-title">1. Information We Collect</h2>
          <p className="static-lead" style={{ marginBottom: '10px' }}>
            We only collect data necessary to provide and improve our educational and analytical services:
          </p>
          <ul className="static-feature-list">
            <li>
              <strong>Directly Provided Information:</strong> When you contact our support team via contact forms or leave comments on blog posts, we may collect your name, email address, query topic, and message content.
            </li>
            <li>
              <strong>Exam Response Sheet Inputs:</strong> When you utilize our Answer Key Calculator to evaluate your performance, our program parses the publicly accessible response sheet URL or HTML input you voluntarily provide. We do NOT collect or store passwords, Aadhaar numbers, or bank details.
            </li>
            <li>
              <strong>Standard Server Log Files:</strong> Like virtually all websites, our servers record standard log entries including Internet Protocol (IP) addresses, browser type, Internet Service Provider (ISP), date/time stamps, referring/exit pages, and page interactions. This data is non-personally identifiable and used exclusively for security, server load balancing, and traffic trend analysis.
            </li>
            <li>
              <strong>Cookies &amp; Local Storage:</strong> Small text files placed on your browser to retain user preferences (e.g. calculator filters, dark/light theme, recent search terms).
            </li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">2. How We Utilize Your Information</h2>
          <p className="static-lead" style={{ marginBottom: '10px' }}>
            Information collected on our platform is utilized strictly for the following purposes:
          </p>
          <ul className="static-feature-list">
            <li>To compute automated raw scores, correct/wrong question breakdowns, and estimated shift percentiles.</li>
            <li>To respond to your inquiries, feedback, and technical support requests promptly.</li>
            <li>To monitor website infrastructure, prevent malicious bot activities, and maintain server reliability.</li>
            <li>To deliver relevant, non-intrusive educational advertisements that support our free tools.</li>
            <li>To compile aggregated, anonymized statistical trends across exam shifts without revealing individual candidate identities.</li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">3. Absolute Non-Disclosure &amp; Candidate Data Security</h2>
          <p className="static-lead">
            <strong>We maintain a strict zero-sale privacy standard.</strong> We <strong>do not sell, rent, trade, lease, or distribute your personal details, email addresses, or submitted exam response sheets to any commercial third parties, recruiters, or marketing agencies under any circumstances.</strong>
          </p>
          <p className="static-lead">
            All data processed by our tools is treated with standard cryptographic and network security safeguards (HTTPS/SSL encryption).
          </p>
        </div>

        <div>
          <h2 className="static-section-title">4. Cookies &amp; Web Beacons</h2>
          <p className="static-lead">
            Our platform uses cookies to enhance user browsing experiences, understand visitor preferences, and optimize site speed:
          </p>
          <ul className="static-feature-list">
            <li><strong>Essential Functional Cookies:</strong> Necessary for core site functionality and tool calculations.</li>
            <li><strong>Analytical Cookies:</strong> Help us measure aggregate page views and geographic visitor trends without individual identification.</li>
            <li><strong>Advertising Cookies:</strong> Deployed by certified advertising partners to deliver relevant advertisements.</li>
          </ul>
          <p className="static-lead" style={{ marginTop: '8px' }}>
            You may choose to disable or block cookies at any time through your browser settings. Please note that disabling cookies may affect certain interactive features of the website.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">5. Google AdSense &amp; Third-Party Advertising Partners</h2>
          <p className="static-lead">
            Google is a third-party vendor on our website. Google uses cookies—including the DoubleClick DART cookie—to serve ads to visitors based on their visits to our website and other websites across the Internet.
          </p>
          <ul className="static-feature-list">
            <li>
              <strong>Personalized Ads:</strong> Google and affiliated certified ad networks use cookies to serve personalized advertisements based on past browsing history.
            </li>
            <li>
              <strong>Opting Out of Personalized Ads:</strong> You can opt out of personalized Google advertising at any time by visiting{' '}
              <a href="https://adssettings.google.com" target="_blank" rel="noopener noreferrer" style={{ color: '#0066ff', textDecoration: 'underline' }}>
                https://adssettings.google.com
              </a>.
            </li>
            <li>
              <strong>Network Advertising Initiative (NAI):</strong> To opt out of behavioral advertising from multiple third-party ad networks, visit{' '}
              <a href="https://optout.networkadvertising.org" target="_blank" rel="noopener noreferrer" style={{ color: '#0066ff', textDecoration: 'underline' }}>
                https://optout.networkadvertising.org
              </a>{' '}
              or the Digital Advertising Alliance (DAA) at{' '}
              <a href="https://www.aboutads.info/choices/" target="_blank" rel="noopener noreferrer" style={{ color: '#0066ff', textDecoration: 'underline' }}>
                https://www.aboutads.info/choices/
              </a>.
            </li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">6. User Rights &amp; Regulatory Compliance</h2>
          <p className="static-lead">
            In compliance with applicable global and Indian data protection standards (including the Digital Personal Data Protection Act 2023, GDPR, and CCPA):
          </p>
          <ul className="static-feature-list">
            <li><strong>Right to Access:</strong> You may request confirmation of whether we hold any personal information concerning you.</li>
            <li><strong>Right to Rectification:</strong> You may request the correction of inaccurate or incomplete contact details.</li>
            <li><strong>Right to Erasure:</strong> You may request the deletion of your comments or contact submission records from our database.</li>
            <li><strong>Right to Withdraw Consent:</strong> You may withdraw consent for optional cookies at any time.</li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">7. Children&apos;s Online Privacy Protection</h2>
          <p className="static-lead">
            Protecting young users is paramount. RRB Group D Answer Key Portal does not knowingly solicit or collect personally identifiable information from children under the age of 13. If you believe your child has submitted personal details on our site, please contact us immediately, and we will promptly purge such records from our databases.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">8. Updates to this Policy &amp; Contact Channel</h2>
          <p className="static-lead">
            We reserve the right to periodically update this Privacy Policy to reflect technical or regulatory changes. The latest revision date will always be visible at the top of this document. For inquiries or data requests, contact us via email at{' '}
            <a href="mailto:support@rrbgroupdanswerkey.com" style={{ color: '#0066ff', textDecoration: 'underline' }}>
              support@rrbgroupdanswerkey.com
            </a>{' '}
            or through our{' '}
            <Link href="/contact" style={{ color: '#0066ff', textDecoration: 'underline', fontWeight: 600 }}>
              Contact Us Page
            </Link>
            .
          </p>
        </div>
      </div>
    </div>
  );
}
