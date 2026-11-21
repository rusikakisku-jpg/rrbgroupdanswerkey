import React from 'react';
import type { Metadata } from 'next';
import Link from 'next/link';

export const dynamic = 'force-static';

export const metadata: Metadata = {
  title: 'About Us | RRB Group D Answer Key Portal',
  description: 'Learn about RRB Group D Answer Key Portal, an independent educational resource and automated score analysis utility for Railway Recruitment examination aspirants.',
  alternates: {
    canonical: 'https://rrbgroupdanswerkey.com/about',
  },
  openGraph: {
    title: 'About Us | RRB Group D Answer Key Portal',
    description: 'Learn about RRB Group D Answer Key Portal, an independent educational resource and automated score analysis utility for Railway Recruitment examination aspirants.',
    url: 'https://rrbgroupdanswerkey.com/about',
    type: 'website',
  },
};

export default function AboutPage() {
  return (
    <div className="container static-page-wrapper">
      <div className="static-page-card">
        <h1 className="static-page-title">About Us</h1>
        <p className="static-last-updated">Last updated: 01 November 2026</p>

        <p className="static-lead">
          Welcome to <strong>RRB Group D Answer Key Portal</strong> (accessible at{' '}
          <Link href="/" style={{ color: '#0066ff', textDecoration: 'underline', fontWeight: 600 }}>
            rrbgroupdanswerkey.com
          </Link>
          ). We are a dedicated, independent educational platform engineered to assist railway recruitment candidates across India with reliable information, instant response sheet evaluations, and transparent performance insights.
        </p>

        <div>
          <h2 className="static-section-title">1. What Our Portal Provides</h2>
          <p className="static-lead" style={{ marginBottom: '12px' }}>
            Preparing for Railway Recruitment Cell (RRC) and Railway Recruitment Board (RRB) exams requires immense dedication. Once examinations conclude, candidates need accurate guidance to understand their exam performance. Our portal offers:
          </p>
          <ul className="static-feature-list">
            <li>
              <strong>Automated Answer Key &amp; Score Calculator:</strong> A specialized algorithmic tool where candidates can paste their official response sheet links to instantly compute positive marks, negative deductions (1/3rd penalty), and net raw scores.
            </li>
            <li>
              <strong>Shift-Wise Difficulty Insights:</strong> Comparative breakdowns across examination shifts to help aspirants gauge their relative performance within their specific exam slot.
            </li>
            <li>
              <strong>Zone &amp; Category Cut-Off Trends:</strong> Historical and analytical cut-off data covering all 16 Railway Zones for UR, OBC, EWS, SC, ST, Ex-SM, and PwBD categories.
            </li>
            <li>
              <strong>Official Objection Window Guidance:</strong> Detailed procedures on reviewing provisional answer keys, identifying questionable questions, and submitting formal objections on the regional RRB portals.
            </li>
            <li>
              <strong>Verified Notification Alerts:</strong> Fast, fact-checked updates on exam schedules, city intimation slips, admit cards, normalization formulas, and final selection merit lists.
            </li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">2. Our Mission &amp; Purpose</h2>
          <p className="static-lead">
            Every major Railway recruitment drive involves tens of millions of aspirants from all corners of India. Waiting for months between the CBT exam and the declaration of normalized scores creates prolonged uncertainty. Our objective is to democratize performance clarity by providing free, instant, and candidate-friendly analysis tools so students can plan their next preparation phase—such as the Physical Efficiency Test (PET) or document verification—with confidence.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">3. Computation Methodology &amp; Accuracy</h2>
          <p className="static-lead">
            Precision and objectivity govern all automated tools hosted on our platform:
          </p>
          <ul className="static-feature-list">
            <li>
              <strong>100% Deterministic Program Processing:</strong> All score evaluations are computed programmatically according to the exact marking scheme published in the official Centralized Employment Notice (CEN).
            </li>
            <li>
              <strong>Marking Scheme Compliance:</strong> 1 mark is credited for each correct answer, exactly 1/3 mark (0.333) is deducted for incorrect answers, and no deductions apply to unattempted questions. Full credit is accounted for questions officially dropped or invalidated by the recruitment board.
            </li>
            <li>
              <strong>Data Privacy &amp; Anonymity:</strong> Response sheet inputs are processed safely without storing candidate passwords or sensitive personal login credentials.
            </li>
          </ul>
        </div>

        <div>
          <h2 className="static-section-title">4. Editorial Team &amp; Technical Mentors</h2>
          <p className="static-lead">
            Our editorial and technical team comprises experienced competitive examination mentors, data analysts, and software engineers based in India. We track official circulars issued by the Railway Recruitment Control Board (RRCB) and all 21 regional boards—including RRB Bhopal, Chandigarh, Allahabad (Prayagraj), Patna, Kolkata, Mumbai, Secunderabad, Chennai, and Guwahati—ensuring all notices and calculator datasets remain strictly updated.
          </p>
        </div>

        <div>
          <h2 className="static-section-title">5. Official Non-Affiliation Disclaimer</h2>
          <p className="static-lead">
            <strong>RRB Group D Answer Key Portal is strictly an independent educational resource.</strong> We are <strong>NOT affiliated, associated, authorized, endorsed by, or in any way officially connected with the Railway Recruitment Board (RRB), Railway Recruitment Cell (RRC), Ministry of Railways, or any Government of India department.</strong> The official portals of the Railway Recruitment Board can be accessed at{' '}
            <a href="https://www.rrbapply.gov.in" target="_blank" rel="noopener noreferrer" style={{ color: '#0066ff', textDecoration: 'underline' }}>
              rrbapply.gov.in
            </a>{' '}
            and the respective regional board websites. Official results, final cut-offs, and normalized merit lists are published exclusively by the authorized government recruitment authorities.
          </p>
        </div>

        <p className="static-lead" style={{ marginTop: '16px' }}>
          Have questions, suggestions, or feedback? Please visit our{' '}
          <Link href="/contact" style={{ color: '#0066ff', textDecoration: 'underline', fontWeight: 600 }}>
            Contact Us Page
          </Link>
          . We wish every railway aspirant great success in their examination journey!
        </p>
      </div>
    </div>
  );
}
