import fs from 'fs';
import path from 'path';

function copyRecursiveSync(src, dest) {
  const exists = fs.existsSync(src);
  const stats = exists && fs.statSync(src);
  const isDirectory = exists && stats.isDirectory();

  if (isDirectory) {
    if (!fs.existsSync(dest)) {
      fs.mkdirSync(dest, { recursive: true });
    }
    fs.readdirSync(src).forEach((childItemName) => {
      copyRecursiveSync(
        path.join(src, childItemName),
        path.join(dest, childItemName)
      );
    });
  } else if (exists) {
    fs.copyFileSync(src, dest);
  }
}

const outDir = path.resolve('out');
const vercelDir = path.resolve('.vercel/output/static');

if (fs.existsSync(outDir)) {
  console.log('Copying out/ contents to .vercel/output/static for Cloudflare Pages compatibility...');
  copyRecursiveSync(outDir, vercelDir);
  console.log('Successfully copied all static files to .vercel/output/static!');
}
