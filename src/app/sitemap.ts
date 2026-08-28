import { MetadataRoute } from 'next';
import { getPosts } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';

export const dynamic = 'force-static';

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';

  const staticPages: MetadataRoute.Sitemap = [
    { url: baseUrl, lastModified: new Date() },
    { url: `${baseUrl}/blogs`, lastModified: new Date() },
    { url: `${baseUrl}/answer-key-calculator`, lastModified: new Date() },
    { url: `${baseUrl}/about`, lastModified: new Date() },
    { url: `${baseUrl}/contact`, lastModified: new Date() },
    { url: `${baseUrl}/disclaimer`, lastModified: new Date() },
    { url: `${baseUrl}/privacy`, lastModified: new Date() },
    { url: `${baseUrl}/terms`, lastModified: new Date() },
  ];

  const categories = ['Notification', 'Answer Key', 'Admit Card', 'Result', 'Syllabus'];
  const categoryUrls: MetadataRoute.Sitemap = categories.map((cat) => ({
    url: `${baseUrl}/${categoryToSlug(cat)}`,
    lastModified: new Date(),
  }));

  const posts = await getPosts();
  const postUrls: MetadataRoute.Sitemap = posts.map((post) => ({
    url: `${baseUrl}/${post.slug}`,
    lastModified: new Date(post.created_at.replace(' ', 'T')),
  }));

  return [...staticPages, ...categoryUrls, ...postUrls];
}
