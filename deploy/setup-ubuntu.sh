#!/bin/bash
# ==========================================
# 魔都ACGN资讯站 - Ubuntu 24 部署脚本
# 在纯净的 Ubuntu 24.04 上运行
# ==========================================

set -e

echo ">>> 更新系统..."
sudo apt update && sudo apt upgrade -y

echo ">>> 安装 Node.js 22..."
curl -fsSL https://deb.nodesource.com/setup_22.x | sudo -E bash -
sudo apt install -y nodejs

echo ">>> 安装 pnpm..."
sudo corepack enable
corepack prepare pnpm@latest --activate

echo ">>> 安装 Nginx..."
sudo apt install -y nginx

echo ">>> 创建网站目录..."
sudo mkdir -p /var/www/koicomic
sudo chown -R $USER:$USER /var/www/koicomic

echo ">>> 安装 PM2 用于进程管理..."
sudo npm install -g pm2

echo ">>> 安装 Certbot (SSL证书)..."
sudo apt install -y certbot python3-certbot-nginx

echo ""
echo "=========================================="
echo "  部署准备完成！接下来请手动执行："
echo "=========================================="
echo ""
echo "1. 克隆项目到 /var/www/koicomic："
echo "   git clone https://github.com/SHACGN/bw_docs.git /var/www/koicomic"
echo ""
echo "2. 安装依赖并构建："
echo "   cd /var/www/koicomic"
echo "   pnpm install"
echo "   pnpm run build"
echo ""
echo "3. 配置 Nginx："
echo "   sudo cp deploy/nginx.conf /etc/nginx/sites-available/koicomic"
echo "   sudo ln -s /etc/nginx/sites-available/koicomic /etc/nginx/sites-enabled/"
echo "   sudo nginx -t && sudo systemctl reload nginx"
echo ""
echo "4. 配置 SSL 证书："
echo "   sudo certbot --nginx -d koicomic.com -d www.koicomic.com"
echo ""
echo "5. 设置自动续期："
echo "   sudo systemctl enable certbot.timer"
echo ""
echo "6. 后续更新网站："
echo "   cd /var/www/koicomic && git pull && pnpm install && pnpm run build"
echo ""
echo "=========================================="
