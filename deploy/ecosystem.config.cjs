// PM2 Ecosystem 配置（如果你需要使用 Node 预览而非纯静态）
// 对于纯静态 Astro 站点，推荐直接用 Nginx 托管 dist/
// 此配置为 preview 模式备用

module.exports = {
  apps: [{
    name: 'koicomic',
    script: 'npx',
    args: 'astro preview',
    cwd: '/var/www/koicomic',
    env: {
      HOST: '127.0.0.1',
      PORT: 4321,
    },
    instances: 1,
    autorestart: true,
    watch: false,
    max_memory_restart: '200M',
  }]
};
