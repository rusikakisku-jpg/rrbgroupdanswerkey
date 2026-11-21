import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'Terms & Conditions | RRB Group D Answer Key Portal',
  description: 'Review the Terms and Conditions governing the use of RRB Group D Answer Key Portal, educational articles, and automated response sheet calculation utilities.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/terms',
  },
  openGraph: {
    title: 'Terms & Conditions | RRB Group D Answer Key Portal',
    description: 'Review the Terms and Conditions governing the use of RRB Group D Answer Key Portal, educational articles, and automated response sheet calculation utilities.',
    url: 'https://rrbgroupdanswerkey.com/terms',
    type: 'website',
  },
};

export default function TermsPage() {
  return (
    <div className="container static-page-wrapper">
      <div className="static-page-card">
        <h1 className="static-page-title">Terms &amp; Conditions</h1>
        <p className="static-last-updated">Last updated: 01 November 2026</p>

        <p className="static-lead" style={{ textAlign: 'center' }}>
          Welcome to <strong>RRB Group D Answer Key Portal</strong> (<Link href="/" style={{ color: '#0066ff', textDecoration: 'underline' }}>rrbgroupdanswerkey.com</Link>). By browsing our website or utilizing our automated calculators, you acknowledge and agree to be bound by the Terms and Conditions outlined below.
        </p>

        <div>
          <h2 className="static-section-title">1. Educational Scope &amp; Nature of Services</h2>
          <p className="static-lead">
            RRB Group D Answer Key Portal provides informational articles, recruitment updates, syllabus guides, and an automated response sheet score calculator tailored for railway examination aspirants. All services and web tools are offered strictly for educational, informational, and self-evaluation purposes.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">2. Automated Calculator &amp; Indicative Outputs</h2>
          <p className="static-lead">
            Our score calculator is an automated software utility that processes provisional candidate response sheets. By inputting your response sheet link or source HTML, you authorize our platform to programmatically parse and calculate your raw marks according to standard CEN guidelines:
          </p>
          <ul className="static-feature-list">
            <li><strong>Indicative Only:</strong> All calculated scores, shift averages, and predicted rankings are purely indicative and do not represent official marks or final recruitment merit lists.</li>
            <li><strong>Official Authority:</strong> The Railway Recruitment Board (RRB) and Railway Recruitment Cell (RRC) are the sole legal authorities for declaring official candidate scores, normalization calculations, and selection outcomes.</li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">3. User Conduct &amp; Acceptable Usage</h2>
          <p className="static-lead" style={{ marginBottom: '10px' }}>
            When accessing our website or using interactive features (such as comments or tools), you agree not to:
          </p>
          <ul className="static-feature-list">
            <li>Engage in automated web-scraping, denial-of-service attempts, or overloading server resources.</li>
            <li>Post obscene, defamatory, unlawful, or promotional spam content in comment sections.</li>
            <li>Attempt to tamper with, reverse-engineer, or intercept calculator algorithms or API endpoints.</li>
            <li>Misrepresent your identity or submit forged response sheets intended to distort aggregated shift analytics.</li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">4. Intellectual Property Rights</h2>
          <p className="static-lead">
            Unless otherwise stated, all proprietary content—including website design, articles, analysis summaries, logos, and custom calculator software code—is the intellectual property of RRB Group D Answer Key Portal. You may view and print pages for personal, non-commercial educational use only. Official exam question texts and notices remain the copyright of the respective exam conducting authorities.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">5. Disclaimer of Warranties &amp; Limitation of Liability</h2>
          <p className="static-lead">
            This platform and all its tools are provided on an &ldquo;as is&rdquo; and &ldquo;as available&rdquo; basis without warranties of any kind, either express or implied. We do not warrant that the website will operate uninterrupted or error-free. Under no circumstances shall the platform administrators be held liable for any loss, damage, or missed deadlines arising from your use of this site.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">6. Amendments to Terms</h2>
          <p className="static-lead">
            We reserve the right to revise or modify these Terms &amp; Conditions at our sole discretion. Any changes will take effect immediately upon publication. Continued use of our portal following such updates signifies your acceptance of the revised terms.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">7. Contact Information</h2>
          <p className="static-lead">
            If you have questions or concerns regarding these Terms and Conditions, please contact us via email at{' '}
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
