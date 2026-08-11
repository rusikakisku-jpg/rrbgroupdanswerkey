import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: 'export',
  images: {
    unoptimized: true,
    remotePatterns: [
      {
        protocol: 'https',
        hostname: 'rrbgroupdanswerkey.rusikakisku.workers.dev',
      },
    ],
  },
};

export default nextConfig;
