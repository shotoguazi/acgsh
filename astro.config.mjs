import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://koicomic.com',
  trailingSlash: 'always',
  build: {
    format: 'directory',
  },
});
