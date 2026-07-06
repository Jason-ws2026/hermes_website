#!/bin/bash
# 拾光者官网 — 一键部署脚本
# 用法：./deploy.sh

set -e

echo "=== 拾光者官网 部署 ==="

# 1. 检查是否有未提交的修改
if [[ -n $(git status --porcelain) ]]; then
    echo "检测到未提交的修改..."

    # 显示变动文件
    git status --short

    # 提交
    git add .
    read -p "输入本次提交说明： " msg
    git commit -m "$msg"
else
    echo "工作区干净，无需提交"
fi

# 2. 推送到 GitHub
echo "推送至 GitHub..."
git push origin main

echo ""
echo "=== 部署完成！==="
echo "线上地址：https://jason-ws2026.github.io/hermes_website/"
echo "自定义域名：https://sguangzhe.cn"
echo "等待 1-2 分钟生效"
