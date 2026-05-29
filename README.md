# 魔都线下ACGN交流群-资讯站 (koicomic.com)

由 [VitePress](https://vitepress.dev/) 迁移至 [Astro](https://astro.build/) 构建的 ACGN 资讯站。

## 本地开发

```bash
# 安装依赖
pnpm install

# 启动开发服务器
pnpm dev

# 构建生产版本
pnpm build

# 预览构建结果
pnpm preview
```

## 项目结构

```
src/
├── layouts/          # 布局组件
│   ├── BaseLayout.astro    # 基础布局（导航+页脚）
│   └── GuideLayout.astro   # 指南页面布局
├── components/       # 可复用组件
│   ├── Nav.astro           # 导航栏
│   ├── Footer.astro        # 页脚
│   └── bw/                 # BW指南专用组件
│       ├── BwHero.astro
│       ├── BwSection.astro
│       ├── BwCallout.astro
│       ├── BwUpdate.astro
│       ├── BwLatest.astro
│       ├── BwHistory.astro
│       ├── BwBadge.astro
│       └── BwBilingual.astro
├── pages/            # 页面路由
│   ├── index.astro
│   └── guide/
│       ├── exhibit/        # 展览
│       ├── concert/        # 演唱会
│       ├── others/          # 其他
│       └── Comment.astro    # 评论区
└── styles/
    └── global.css    # 全局样式
```

## Ubuntu 24 部署

参见 `deploy/setup-ubuntu.sh`。

快速部署：

```bash
# 1. 在服务器上克隆仓库
git clone https://github.com/SHACGN/bw_docs.git /var/www/koicomic
cd /var/www/koicomic

# 2. 构建
pnpm install
pnpm build

# 3. 配置 Nginx（复制 deploy/nginx.conf）
sudo cp deploy/nginx.conf /etc/nginx/sites-available/koicomic
sudo ln -s ... /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl reload nginx

# 4. SSL
sudo certbot --nginx -d koicomic.com -d www.koicomic.com
```

## License

CC BY-NC-ND 4.0
