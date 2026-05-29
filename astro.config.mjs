import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://acgsh.com',
  trailingSlash: 'always',
  build: {
    format: 'directory',
  },
});
