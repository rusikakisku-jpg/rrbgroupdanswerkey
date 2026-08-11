'use client';

import React, { useState } from 'react';

export default function ContactPage() {
  const [submitted, setSubmitted] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setSubmitted(true);
  };

  return (
    <div className="container">
      <div className="page-card">
        <h1 className="page-head-title">Contact Us</h1>
        <div className="page-head-bar"></div>
        <div className="page-content">
          <p>
            Have queries regarding notifications, answer key links, or website content? Send us a message below.
          </p>

          {submitted ? (
            <div style={{ padding: '20px', background: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: '4px', color: '#166534', fontWeight: 600 }}>
              Thank you for reaching out. Your message has been sent successfully.
            </div>
          ) : (
            <form onSubmit={handleSubmit} style={{ maxWidth: '600px', marginTop: '20px' }}>
              <div className="form-group">
                <label className="form-label">Full Name *</label>
                <input type="text" required className="form-control" />
              </div>
              <div className="form-group">
                <label className="form-label">Email Address *</label>
                <input type="email" required className="form-control" />
              </div>
              <div className="form-group">
                <label className="form-label">Subject</label>
                <input type="text" className="form-control" />
              </div>
              <div className="form-group">
                <label className="form-label">Message *</label>
                <textarea rows={5} required className="form-control"></textarea>
              </div>
              <button type="submit" className="btn-red">
                Send Message
              </button>
            </form>
          )}
        </div>
      </div>
    </div>
  );
}
