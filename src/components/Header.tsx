'use client';

import React, { useState } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Menu } from 'lucide-react';

interface HeaderProps {
  siteTitle?: string;
  siteTagline?: string;
  siteLogo?: string;
  showAds?: boolean;
}

export default function Header({
  siteTitle = 'RRB Group D Answer Key',
  siteTagline = 'Notification,Answer key,Result',
  siteLogo = 'https://rrbgroupdanswerkey.rusikakisku.workers.dev/uploads/logo_1784561384_6a5e3ee8e7bad.png',
  showAds = false,
}: HeaderProps) {
  const [mobileOpen, setMobileOpen] = useState(false);
  const pathname = usePathname();

  const menuItems = [
    { title: 'Home', url: '/' },
    { title: 'Notification', url: '/notification' },
    { title: 'Answer Key', url: '/answer-key' },
    { title: 'Admit Card', url: '/admit-card' },
    { title: 'Result', url: '/result' },
    { title: 'Syllabus', url: '/syllabus' },
  ];

  return (
    <>
      <header className="site-header">
        <div className="container header-inner">
          
          {/* Site Branding */}
          <div className="site-branding-container" style={{ display: 'flex', flexDirection: 'row', alignItems: 'center', gap: '12px' }}>
            {siteLogo && (
              <Link href="/" className="logo-link" style={{ display: 'inline-block', textDecoration: 'none' }}>
                <img
                  src={siteLogo}
                  alt={siteTitle}
                  className="site-logo-img"
                  style={{ maxHeight: '48px', width: 'auto', display: 'block' }}
                />
              </Link>
            )}
            <div className="site-branding-text" style={{ display: 'flex', flexDirection: 'column' }}>
              <h1 className="site-title">
                <Link href="/" rel="home" style={siteLogo ? { gap: 0 } : undefined}>
                  {siteTitle}
                </Link>
              </h1>
              <span className="site-tagline">{siteTagline}</span>
            </div>
          </div>

          {/* Main Navigation */}
          <nav className="main-navigation">
            <ul className="nav-menu" id="nav-menu">
              {menuItems.map((item) => {
                const isActive =
                  item.url === '/'
                    ? pathname === '/'
                    : pathname.toLowerCase() === item.url.toLowerCase();
                return (
                  <li key={item.title} className="nav-item">
                    <Link
                      href={item.url}
                      className={`nav-link ${isActive ? 'active' : ''}`}
                    >
                      {item.title}
                    </Link>
                  </li>
                );
              })}
            </ul>
          </nav>

          {/* Header Gadgets / Mobile Toggle */}
          <div className="header-gadgets">
            <button
              className="hm-mobile-menu-toggle"
              id="nav-toggle"
              aria-label="Toggle navigation"
              onClick={() => setMobileOpen(!mobileOpen)}
            >
              <Menu style={{ width: '24px', height: '24px', color: '#ffffff' }} />
            </button>
          </div>

        </div>
      </header>

      {/* Ad Strip 728x90 (Only rendered if showAds is true) */}
      {showAds && (
        <div className="ad-strip">
          <div className="container" style={{ display: 'flex', justifyContent: 'center' }}>
            <div className="ad-card-728">
              <div className="ad-title">Google AdSense</div>
              <div className="ad-size">728x90</div>
            </div>
          </div>
        </div>
      )}

      {/* Mobile Drawer Sidebar */}
      {mobileOpen && (
        <>
          <div
            className="hm-overlay-mask active"
            onClick={() => setMobileOpen(false)}
          />
          <div className="hm-drawer-panel active">
            <div className="hm-drawer-header">
              <span className="hm-drawer-title">{siteTitle}</span>
              <button
                className="hm-drawer-close"
                aria-label="Close menu"
                onClick={() => setMobileOpen(false)}
              >
                &times;
              </button>
            </div>
            <div className="hm-drawer-body">
              <ul className="hm-mobile-nav">
                {menuItems.map((item) => {
                  const isActive =
                    item.url === '/'
                      ? pathname === '/'
                      : pathname.toLowerCase() === item.url.toLowerCase();
                  return (
                    <li key={item.title}>
                      <Link
                        href={item.url}
                        className={isActive ? 'active' : ''}
                        onClick={() => setMobileOpen(false)}
                      >
                        {item.title}
                      </Link>
                    </li>
                  );
                })}
              </ul>
            </div>
          </div>
        </>
      )}
    </>
  );
}
