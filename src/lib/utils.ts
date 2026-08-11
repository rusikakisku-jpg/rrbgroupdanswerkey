export function categoryToSlug(category: string): string {
  if (!category) return '';
  return category.trim().toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/(^-|-$)+/g, '');
}
