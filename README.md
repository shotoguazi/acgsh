# 魔都ACGN活动交流群-资讯站 (acgsh.com)

由 [VitePress](https://vitepress.dev/) 迁移至 [Astro](https://astro.build/) 构建的 ACGN 资讯站。

## 写在前面
此仓库为 魔都ACGN活动交流群-资讯站 源码仓库


## 使用 AI 辅助开发（Vibe-Coding）

**重要：** 使用 AI Agent（Cursor / Windsurf / Copilot 等）修改代码前，**务必先让 Agent 阅读 `AGENTS.md`**，其中包含完整的项目规范、主题系统、组件库说明和样式约定。

建议在 Prompt 开头追加：

```
先阅读 AGENTS.md 了解项目规范，然后按照规范进行修改。
```

## pnpm 使用说明

本项目使用 pnpm 管理依赖和运行脚本。建议通过 Corepack 启用 pnpm：

```bash
corepack enable
corepack prepare pnpm@latest --activate
```

常用命令：

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

`pnpm build` 会生成静态文件到 `dist/`。仓库不再提供固定的部署脚本，请根据自己的服务器、CDN 或静态托管平台自行配置部署流程。

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
│   ├── 404.astro
│   ├── about.astro
│   └── guide/
│       ├── exhibit/        # 展览
│       ├── concert/        # 演唱会
│       ├── intro/           # 介绍
│       └── others/          # 其他
└── styles/
    └── global.css    # 全局样式
```

## License

CC BY-NC-ND 4.0
