export function categoryToSlug(category: string): string {
  if (!category) return '';
  return category.trim().toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
}

/**
 * Strips HTML tags and excessive whitespace, trimming to a clean excerpt.
 */
export function cleanExcerpt(text?: string | null, maxLength = 160): string {
  if (!text) return '';
  const clean = text.replace(/<[^>]*>?/gm, '').replace(/\s+/g, ' ').trim();
  if (clean.length <= maxLength) return clean;
  return clean.slice(0, maxLength - 3).trim() + '...';
}

/**
 * Normalizes cover image URLs, handling base64, remote URLs, and relative uploads.
 */
export function getFormattedCoverUrl(coverImage?: string | null): string {
  if (!coverImage || typeof coverImage !== 'string') {
    return '/uploads/cover_1784569315_6a5e5de3a38bb.jpg';
  }
  const trimmed = coverImage.trim();
  if (!trimmed) {
    return '/uploads/cover_1784569315_6a5e5de3a38bb.jpg';
  }

  // Handle embedded base64 data URLs
  if (trimmed.includes('data:image/')) {
    return trimmed.substring(trimmed.indexOf('data:image/'));
  }

  // Handle absolute URLs
  if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
    return trimmed;
  }

  // Handle relative uploads
  return trimmed.startsWith('/') ? trimmed : `/${trimmed}`;
}

/**
 * Safely parse any date string into an ISO 8601 string.
 */
export function toIsoDate(dateStr?: string | null): string {
  if (!dateStr) return new Date('2026-01-01T00:00:00.000Z').toISOString();
  const cleaned = String(dateStr).trim().replace(' ', 'T');
  const parsed = Date.parse(cleaned);
  return !isNaN(parsed) ? new Date(parsed).toISOString() : new Date('2026-01-01T00:00:00.000Z').toISOString();
}
