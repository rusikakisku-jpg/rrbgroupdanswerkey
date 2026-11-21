'use client';

import React, { useState } from 'react';

export default function ContactPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    subject: 'General Enquiry',
    message: '',
  });
  const [status, setStatus] = useState<'idle' | 'sending' | 'success' | 'error'>('idle');
  const [feedbackMsg, setFeedbackMsg] = useState('');

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    if (!formData.name.trim() || !formData.email.trim() || !formData.message.trim()) {
      setStatus('error');
      setFeedbackMsg('Please complete all required fields before submitting.');
      return;
    }

    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(formData.email)) {
      setStatus('error');
      setFeedbackMsg('Please enter a valid email address.');
      return;
    }

    setStatus('sending');

    try {
      const res = await fetch('https://rrbgroupdanswerkey.rusikakisku.workers.dev/api/contact', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (res.ok) {
        setStatus('success');
        setFeedbackMsg('✅ Thank you! Your message has been delivered successfully. Our support team will respond within 24 to 48 business hours.');
        setFormData({ name: '', email: '', subject: 'General Enquiry', message: '' });
      } else {
        throw new Error('Server returned non-ok status');
      }
    } catch (_) {
      // Fallback: Open candidate's default email client
      const fallbackMailto = `mailto:support@rrbgroupdanswerkey.com?subject=${encodeURIComponent(
        `[${formData.subject}] from ${formData.name}`
      )}&body=${encodeURIComponent(formData.message + `\n\nFrom: ${formData.name} (${formData.email})`)}`;
      window.open(fallbackMailto, '_blank');
      setStatus('success');
      setFeedbackMsg('✅ Your email application has been opened with your message. Please click send to reach us directly at support@rrbgroupdanswerkey.com.');
    }
  };

  return (
    <div className="container static-page-wrapper">
      <div className="static-page-card">
        <div>
          <h1 className="static-page-title">Contact Us</h1>
          <p className="static-last-updated">We are here to assist railway recruitment candidates and educators</p>
          <p className="static-lead" style={{ textAlign: 'center', maxWidth: '720px', margin: '10px auto 0' }}>
            Have a question regarding answer keys, found an ambiguous question ID in an exam shift, or need assistance using our score calculator? Reach out to our team below.
          </p>
        </div>

        {/* Contact Info Cards */}
        <div className="contact-info-grid">
          <div className="contact-info-box">
            <span className="contact-info-label">Direct Support Email</span>
            <p className="contact-info-value">
              <a href="mailto:support@rrbgroupdanswerkey.com" style={{ color: '#0066ff' }}>
                support@rrbgroupdanswerkey.com
              </a>
            </p>
          </div>

          <div className="contact-info-box">
            <span className="contact-info-label" style={{ color: '#16a34a' }}>Working Hours</span>
            <p className="contact-info-value">
              Mon – Sat: 9:30 AM – 6:30 PM IST
            </p>
          </div>

          <div className="contact-info-box">
            <span className="contact-info-label" style={{ color: '#7c3aed' }}>Response Turnaround</span>
            <p className="contact-info-value">
              Typically within 24 – 48 business hours
            </p>
          </div>
        </div>

        {/* Status Alerts */}
        {status === 'success' && (
          <div style={{ padding: '16px 20px', background: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: '8px', color: '#166534', fontWeight: 600, fontSize: '0.95rem' }}>
            {feedbackMsg}
          </div>
        )}
        {status === 'error' && (
          <div style={{ padding: '16px 20px', background: '#fef2f2', border: '1px solid #fecaca', borderRadius: '8px', color: '#991b1b', fontWeight: 600, fontSize: '0.95rem' }}>
            {feedbackMsg}
          </div>
        )}

        {/* Contact Form */}
        <form onSubmit={handleSubmit} className="contact-form-styled" noValidate>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(250px, 1fr))', gap: '16px' }}>
            <div>
              <label htmlFor="contact-name" style={{ display: 'block', marginBottom: '6px', fontWeight: 700, fontSize: '0.9rem', color: '#1e293b' }}>
                Your Full Name <span style={{ color: '#dc2626' }}>*</span>
              </label>
              <input
                type="text"
                id="contact-name"
                className="form-input-styled"
                placeholder="e.g. Ramesh Kumar"
                value={formData.name}
                onChange={(e) => setFormData((prev) => ({ ...prev, name: e.target.value }))}
                required
              />
            </div>

            <div>
              <label htmlFor="contact-email" style={{ display: 'block', marginBottom: '6px', fontWeight: 700, fontSize: '0.9rem', color: '#1e293b' }}>
                Email Address <span style={{ color: '#dc2626' }}>*</span>
              </label>
              <input
                type="email"
                id="contact-email"
                className="form-input-styled"
                placeholder="name@example.com"
                value={formData.email}
                onChange={(e) => setFormData((prev) => ({ ...prev, email: e.target.value }))}
                required
              />
            </div>
          </div>

          <div>
            <label htmlFor="contact-subject" style={{ display: 'block', marginBottom: '6px', fontWeight: 700, fontSize: '0.9rem', color: '#1e293b' }}>
              Query Subject / Topic
            </label>
            <select
              id="contact-subject"
              className="form-input-styled"
              value={formData.subject}
              onChange={(e) => setFormData((prev) => ({ ...prev, subject: e.target.value }))}
            >
              <option value="Answer Key Calculator Issue">Answer Key Calculator / Response Sheet Parsing Issue</option>
              <option value="Question Discrepancy / Objection">Question Paper Discrepancy / Objection Help</option>
              <option value="Cut-Off or Normalization Query">Cut-Off or Normalization Query</option>
              <option value="Content Correction">Content Correction / Report an Error</option>
              <option value="General Enquiry">General Enquiry &amp; Feedback</option>
            </select>
          </div>

          <div>
            <label htmlFor="contact-message" style={{ display: 'block', marginBottom: '6px', fontWeight: 700, fontSize: '0.9rem', color: '#1e293b' }}>
              Your Detailed Message <span style={{ color: '#dc2626' }}>*</span>
            </label>
            <textarea
              id="contact-message"
              className="form-textarea-styled"
              rows={5}
              placeholder="Describe your query, feedback, or exam shift details..."
              value={formData.message}
              onChange={(e) => setFormData((prev) => ({ ...prev, message: e.target.value }))}
              required
            ></textarea>
          </div>

          <div>
            <button
              type="submit"
              className="contact-btn-submit"
              disabled={status === 'sending'}
            >
              {status === 'sending' ? 'Submitting Message...' : 'Send Message →'}
            </button>
          </div>
        </form>

        {/* Quick FAQ Strip */}
        <div style={{ marginTop: '20px', paddingTop: '20px', borderTop: '1px solid #f1f5f9' }}>
          <h2 className="static-section-title" style={{ marginTop: 0 }}>Frequently Asked Questions</h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', marginTop: '10px' }}>
            <div style={{ background: '#f8fafc', padding: '12px 16px', borderRadius: '8px' }}>
              <p style={{ fontWeight: 700, color: '#0f172a', marginBottom: '4px' }}>Q: Is this an official portal of the Railway Recruitment Board?</p>
              <p style={{ fontSize: '0.9rem', color: '#475569', margin: 0 }}>A: No. We are an independent educational utility. For official administrative queries, visit your respective regional RRB portal (e.g. rrbapply.gov.in).</p>
            </div>
            <div style={{ background: '#f8fafc', padding: '12px 16px', borderRadius: '8px' }}>
              <p style={{ fontWeight: 700, color: '#0f172a', marginBottom: '4px' }}>Q: Does the calculator store my login password or response sheet link?</p>
              <p style={{ fontSize: '0.9rem', color: '#475569', margin: 0 }}>A: No. Answer key evaluations are parsed deterministically to compute raw marks. We never ask for or save candidate login passwords.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
