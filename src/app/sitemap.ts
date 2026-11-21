import { MetadataRoute } from 'next';
import { getPosts } from '@/lib/db';
import { categoryToSlug } from '@/lib/utils';

export const dynamic = 'force-static';

export default async function sitemap(): Promise<MetadataRoute.Sitemap> {
  const baseUrl = process.env.NEXT_PUBLIC_SITE_URL || 'https://rrbgroupdanswerkey.com';
  const today = new Date();

  const staticPages: MetadataRoute.Sitemap = [
    { url: baseUrl, lastModified: today, changeFrequency: 'daily', priority: 1.0 },
    { url: `${baseUrl}/blogs`, lastModified: today, changeFrequency: 'daily', priority: 0.9 },
    { url: `${baseUrl}/answer-key-calculator`, lastModified: today, changeFrequency: 'daily', priority: 0.9 },
    { url: `${baseUrl}/about`, lastModified: today, changeFrequency: 'monthly', priority: 0.7 },
    { url: `${baseUrl}/contact`, lastModified: today, changeFrequency: 'monthly', priority: 0.7 },
    { url: `${baseUrl}/disclaimer`, lastModified: today, changeFrequency: 'monthly', priority: 0.6 },
    { url: `${baseUrl}/privacy`, lastModified: today, changeFrequency: 'monthly', priority: 0.6 },
    { url: `${baseUrl}/terms`, lastModified: today, changeFrequency: 'monthly', priority: 0.6 },
  ];

  const categories = ['Notification', 'Answer Key', 'Admit Card', 'Result', 'Syllabus'];
  const categoryUrls: MetadataRoute.Sitemap = categories.map((cat) => ({
    url: `${baseUrl}/${categoryToSlug(cat)}`,
    lastModified: today,
    changeFrequency: 'daily',
    priority: 0.8,
  }));

  let postUrls: MetadataRoute.Sitemap = [];
  try {
    const posts = await getPosts();
    postUrls = posts.map((post) => {
      let postDate = today;
      if (post.created_at) {
        const parsed = Date.parse(post.created_at.replace(' ', 'T'));
        if (!isNaN(parsed)) postDate = new Date(parsed);
      }
      return {
        url: `${baseUrl}/${post.slug}`,
        lastModified: postDate,
        changeFrequency: 'daily',
        priority: 0.9,
      };
    });
  } catch (e) {
    postUrls = [];
  }

  return [...staticPages, ...categoryUrls, ...postUrls];
}
