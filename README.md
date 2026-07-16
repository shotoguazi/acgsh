# 魔都 ACGN 活动交流群 - 资讯站

[![Astro](https://img.shields.io/badge/Astro-5-ff5d01?logo=astro&logoColor=white)](https://astro.build/)
[![pnpm](https://img.shields.io/badge/pnpm-11-f69220?logo=pnpm&logoColor=white)](https://pnpm.io/)
[![License](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-blue)](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans)

<https://acgsh.com>

这是一个面向上海 ACGN 活动参与者的非营利性资讯站，用来整理展会、演唱会、交通、住宿、票务、行前准备等实用信息。

站点从 VitePress 迁移至 Astro，目前以纯静态页面为主，适合部署到任意静态托管、CDN 或自有服务器。

## 站点内容

| 分类 | 页面 | 内容摘要 |
| --- | --- | --- |
| 展览 | [BW 2026 快速指南](https://acgsh.com/guide/exhibit/BilibiliWorldBasicInfo/) | BILIBILI WORLD 2026 的购票、入场、交通、住宿、随身物品、排队、退票等新手信息 |
| 展览 | [ChinaJoy 2026 快速指南](https://acgsh.com/guide/exhibit/ChinaJoyBasicInfo/) | ChinaJoy 活动简介、开票时间、票种与购票提醒 |
| 演唱会 | [BML 2026 快速指南](https://acgsh.com/guide/concert/BilibiliMacroLinkBasicInfo/) | BILIBILI MACRO LINK 2026 的活动、票务、携带物品和退票规则 |
| 介绍 | [关于 BILIBILI MACRO LINK](https://acgsh.com/guide/intro/BilibiliMacroLinkIntro/) | BML 基础介绍，以及 2013 年以来历届 BML 信息汇总 |
| 活动索引 | [上海未来大型活动一览](https://acgsh.com/guide/others/OverviewOfShanghaiFutureACGNActivities/) | 汇总 BW、BML、ChinaJoy 等上海大型活动时间与地点 |
| 出行 | [上海游物推荐](https://acgsh.com/guide/others/ShanghaiTravelGuide_Anime/) | 上海二次元相关地点、游玩推荐和交通提示 |
| 出行 | [出国带卡指南](https://acgsh.com/guide/others/card/) | 境外支付方式、信用卡和用卡注意事项 |
| 出行 | [闪击日本攻略 2025](https://acgsh.com/guide/others/JP2025/) | 日本行前准备、推荐行程和支付方式 |


## 技术栈

- Astro 5 静态站点生成
- `.astro` 组件、原生 CSS、原生 JavaScript
- CSS 自定义属性主题系统，支持亮色 / 暗色模式
- pnpm 作为包管理器

项目不使用 React、Vue、Svelte 等前端框架。

## 本地开发

建议通过 Corepack 启用 pnpm：

```bash
corepack enable
corepack prepare pnpm@latest --activate
```

安装依赖：

```bash
pnpm install
```

启动开发服务器：

```bash
pnpm dev
```

构建生产版本：

```bash
pnpm build
```

预览构建结果：

```bash
pnpm preview
```

`pnpm build` 会生成静态文件到 `dist/`。仓库不再提供固定部署脚本，请根据自己的服务器、CDN 或静态托管平台自行配置部署流程。

## 项目结构

```text
src/
├── components/
│   ├── bw/            # 指南页面共享组件
│   ├── Footer.astro
│   └── Nav.astro
├── layouts/
│   ├── BaseLayout.astro
│   └── GuideLayout.astro
├── pages/
│   ├── index.astro
│   ├── 404.astro
│   ├── about.astro
│   └── guide/
│       ├── concert/
│       ├── exhibit/
│       ├── intro/
│       └── others/
└── styles/
    └── global.css
```

## 开发规范

修改代码前请先阅读 [AGENTS.md](./AGENTS.md)。其中包含项目技术栈、目录约定、主题变量、组件使用方式和样式规范。

使用 AI Agent 辅助开发时，也建议在 Prompt 开头明确：

```text
先阅读 AGENTS.md 了解项目规范，然后按照规范进行修改。
```

## License

本站内容采用 [CC BY-NC-ND 4.0](https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh-hans) 协议。
