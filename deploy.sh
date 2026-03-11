#!/bin/bash
# 部署脚本

REPO_URL="https://github.com/tyucheang/diary-notes.git"

echo "=== 部署双专栏日记到GitHub Pages ==="
echo ""
echo "步骤1: 添加所有文件"
git add .

echo "步骤2: 提交更改"
git commit -m "更新日记 $(date +%Y-%m-%d)" 2>/dev/null || echo "无需提交"

echo "步骤3: 推送到GitHub"
git push origin main 2>/dev/null || echo "请先设置远程仓库: git remote add origin $REPO_URL"

echo ""
echo "完成！访问: https://tyucheang.github.io/diary-notes/"
