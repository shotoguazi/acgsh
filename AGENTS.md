# AGENTS.md — 项目规范

## 技术栈

- **Astro 5** — 纯静态站点生成，无 React/Vue/Svelte 等框架
- 仅 `.astro` 组件 + 原生 CSS + 原生 JS
- 包管理器：pnpm

## 目录结构

```
src/
├── components/
│   ├── bw/            # BW/BML 指南页面的共享组件
│   ├── Footer.astro
│   └── Nav.astro
├── layouts/
│   ├── BaseLayout.astro    # 全局布局：Nav + 页面背景 + Footer
│   └── GuideLayout.astro   # 指南页布局：侧边栏 + 内容区
├── pages/
│   ├── index.astro         # 首页
│   ├── 404.astro
│   └── guide/              # 指南页面
│       ├── exhibit/
│       ├── concert/
│       ├── intro/
│       └── others/
└── styles/
    └── global.css          # 全局样式 + CSS 变量主题
```

## 主题系统

- 使用 CSS 自定义属性（变量）控制主题
- `:root` = 亮色，`:root.dark` = 暗色（通过 `<html class="dark">` 控制）
- 主题切换按钮在 Nav 右上角，选择存入 localStorage
- 所有颜色必须使用 CSS 变量，**禁止硬编码**

### 可用 CSS 变量

| 变量 | 用途 |
|------|------|
| `--bg` / `--card` | 页面背景 / 卡片背景 |
| `--text` / `--muted` | 正文色 / 次要文字色 |
| `--brand` / `--brand2` | 品牌粉 / 品牌蓝 |
| `--danger` / `--success` / `--warning` | 语义色 |
| `--bili-blue` | B 站蓝 |
| `--X-rgb` | RGB 通道值，用于 `rgba(var(--X-rgb), .n)` |
| `--surface-subtle` | 极淡背景 |
| `--table-row-{green,yellow,gray}` | 表格行背景 |
| `--text-on-brand` | 品牌色按钮上的文字色 |
| `--text-countdown` / `--text-countdown-label` | 倒计时数字/标签 |
| `--glass-*` | 玻璃拟态效果 |
| `--shadow-*` | 各类阴影 |
| `--border` / `--line` | 边框 / 分割线 |

### 使用规范

```css
/* 正确：使用变量 */
background: rgba(var(--brand-rgb), .1);
color: var(--text);
border: var(--border);

/* 错误：硬编码颜色 */
background: rgba(255, 105, 180, .1);  /* ✗ */
color: #333;                           /* ✗ */
```

暗色模式不需要写 `@media`，变量在 `:root.dark` 中自动覆盖。

## bw/* 组件

用于指南页面的标准化组件：

- **BwHero** — 页面标题区（渐变背景）
- **BwSection** — 内容区块（白卡 + 阴影）
- **BwCallout** — 提示框（type: default / warn / info）
- **BwBadge** — 小标签
- **BwBilingual** — 中日对照块
- **BwUpdate** — 更新记录容器（theme: green/red/yellow/blue/purple/gray）
- **BwLatest** / **BwHistory** — 更新记录的最新/历史版本
- 组件间用 `index.ts` 统一导出

## 布局说明

- **BaseLayout** = Nav + 渐变背景 + `<slot>` + Footer，所有页面默认使用
- **GuideLayout** 继承 BaseLayout，添加左侧边栏导航 + 右侧文章区
- 404 页面独立，不继承任何 Layout，但会 import global.css

## 样式约定

- 组件内 `<style>` 使用 scoped（Astro 默认行为）
- 页面级 `<style>` 也使用 scoped
- 全局样式（reset、body、变量定义）放在 `global.css`
- `@` 路径别名指向 `src/`

## 页面引用路径 @  alias

```astro
import BaseLayout from '@/layouts/BaseLayout.astro';
import { BwHero } from '@/components/bw/index';
```

## dev 命令

```bash
pnpm dev    # 启动开发服务器
pnpm build  # 构建
pnpm preview # 预览构建结果
```
