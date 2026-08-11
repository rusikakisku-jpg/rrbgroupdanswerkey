import React from 'react';
import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'About Us | RRB Group D Answer Key',
  description: 'Learn more about the RRB Group D Answer Key updates portal, our mission, and our dedicated team.',
};

export default function AboutPage() {
  return (
    <div className="container" style={{ marginTop: '30px', marginBottom: '30px' }}>
      <div className="page-card">
        <h1 className="page-head-title">About Us</h1>
        <div className="page-head-bar"></div>
        <div className="page-content">
          <p>Welcome to <strong>RRB Group D Answer Key Portal</strong>, your premier online destination for timely, accurate, and comprehensive notifications, study guides, and tools related to the Railway Recruitment Cell (RRC) Group D examination.</p>

          <h2>Our Mission</h2>
          <p>Our core mission is to empower government exam aspirants across India by delivering official news updates swiftly and in an easily understandable format. We understand that finding genuine information regarding answer key releases, cut-off marks, and scorecard links can be stressful amidst massive online speculation. That is why we commit to verifying all details through official circulars before publishing them.</p>

          <h2>What We Provide</h2>
          <ul>
            <li><strong>Official Answer Key Updates:</strong> Direct links and step-by-step procedures to check your answer keys on the regional RRB portals.</li>
            <li><strong>Score Estimations:</strong> Analytical guides on how to calculate your expected marks and account for negative markings.</li>
            <li><strong>Cut-Off Analyses:</strong> Detailed category-wise and region-wise cut-off scores from past years to help you estimate your selection chances.</li>
            <li><strong>Preparation Materials:</strong> Practice tips, syllabus breakdowns, and revision strategies to help you stay ahead of the competition.</li>
          </ul>

          <h2>Disclaimer</h2>
          <p>Please note that we are an independent educational resource portal. <strong>We are NOT affiliated, associated, or officially connected with the Railway Recruitment Board (RRB), Ministry of Railways, or any other government organization.</strong> All official website links are provided for informational and convenience purposes only. For official circulars, candidates must refer directly to the official regional websites of the Railway Recruitment Board.</p>

          <p>If you have any questions, suggestions, or feedback, please feel free to reach out to us through our <a href="/contact/">Contact Page</a>. We wish you the absolute best in your examination journey!</p>
        </div>
      </div>
    </div>
  );
}
