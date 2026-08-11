import React from 'react';
import Link from 'next/link';

interface FooterProps {
  siteTitle?: string;
}

export default function Footer({ siteTitle = 'RRB Group D Answer Key' }: FooterProps) {
  return (
    <footer className="site-footer">
      <div className="footer-bottom" style={{ borderTop: 'none' }}>
        <div className="container footer-bottom-inner">
          <p>© {new Date().getFullYear()} {siteTitle}. All rights reserved.</p>
          <div className="footer-bottom-links">
            <Link href="/about">About Us</Link>
            <Link href="/contact">Contact Us</Link>
            <Link href="/disclaimer">Disclaimer</Link>
            <Link href="/privacy">Privacy Policy</Link>
            <Link href="/terms">Terms &amp; Conditions</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
