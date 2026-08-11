import React from 'react';
import type { Metadata } from 'next';

export const metadata: Metadata = {
  title: 'Disclaimer | RRB Group D Answer Key',
  description: 'Read the disclaimer for RRB Group D Answer Key Portal regarding information accuracy and non-affiliation with official government bodies.',
};

export default function DisclaimerPage() {
  return (
    <div className="container" style={{ marginTop: '30px', marginBottom: '30px' }}>
      <div className="page-card">
        <h1 className="page-head-title">Disclaimer</h1>
        <div className="page-head-bar"></div>
        <div className="page-content">
          <p>If you require any more information or have any questions about our site&apos;s disclaimer, please feel free to contact us by email at our <a href="/contact/">Contact Page</a>.</p>

          <h2>Disclaimers for RRB Group D Answer Key Portal</h2>
          <p>All the information on this website – <a href="https://rrbgroupdanswerkey.com">https://rrbgroupdanswerkey.com</a> – is published in good faith and for general information purpose only. We do not make any warranties about the completeness, reliability and accuracy of this information. Any action you take upon the information you find on this website, is strictly at your own risk. We will not be liable for any losses and/or damages in connection with the use of our website.</p>

          <p>From our website, you can visit other websites by following hyperlinks to such external sites. While we strive to provide only quality links to useful and ethical websites, we have no control over the content and nature of these sites. These links to other websites do not imply a recommendation for all the content found on these sites. Site owners and content may change without notice and may occur before we have the opportunity to remove a link which may have gone &apos;bad&apos;.</p>

          <p>Please be also aware that when you leave our website, other sites may have different privacy policies and terms which are beyond our control. Please be sure to check the Privacy Policies of these sites as well as their &quot;Terms of Service&quot; before engaging in any business or uploading any information.</p>

          <h2>Non-Affiliation / Government Disclaimer</h2>
          <p><strong>IMPORTANT:</strong> Please note that <strong>RRB Group D Answer Key Portal</strong> is an independent educational and informational website. <strong>We are NOT associated, affiliated, authorized, endorsed by, or in any way officially connected with the Railway Recruitment Board (RRB), Railway Recruitment Cell (RRC), Ministry of Railways, or any other department of the Government of India.</strong></p>

          <p>The official website of the Railway Recruitment Board can be accessed at <a href="http://www.rrbcdg.gov.in" target="_blank" rel="noopener noreferrer">http://www.rrbcdg.gov.in</a> and other regional RRB portals. Candidates are strongly advised to check the official government notifications and press releases for authoritative instructions.</p>

          <h2>Update</h2>
          <p>Should we update, amend or make any changes to this document, those changes will be prominently posted here.</p>
        </div>
      </div>
    </div>
  );
}
