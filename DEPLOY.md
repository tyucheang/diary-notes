# 双专栏日记 - GitHub Pages部署指南

## 部署信息

- **GitHub用户名**: tyucheang
- **建议仓库名**: diary-notes
- **访问地址**: https://tyucheang.github.io/diary-notes/
- **本地文件**: /root/.openclaw/workspace/diary-github/

## 部署步骤

### 方法1：手动部署（推荐）

1. **创建GitHub仓库**
   - 访问 https://github.com/new
   - 仓库名: `diary-notes`
   - 选择 Public
   - 勾选 "Add a README file"
   - 点击 Create repository

2. **启用GitHub Pages**
   - 进入仓库 → Settings → Pages
   - Source 选择 "Deploy from a branch"
   - Branch 选择 "main" / "/ (root)"
   - 点击 Save

3. **上传文件**
   ```bash
   cd /root/.openclaw/workspace/diary-github
   git remote add origin https://github.com/tyucheang/diary-notes.git
   git branch -M main
   git push -u origin main
   ```

4. **访问网站**
   - 等待2-3分钟
   - 访问 https://tyucheang.github.io/diary-notes/
   - 输入今日密码: **C91EA5E0**

### 方法2：使用GitHub CLI

如果已安装gh CLI:
```bash
cd /root/.openclaw/workspace/diary-github
gh repo create tyucheang/diary-notes --public --push --source=.
```

### 方法3：使用GitHub API（需Token）

如果设置了GITHUB_TOKEN环境变量，我可以自动部署。

## 当前状态

- ✅ 网站文件已准备
- ✅ 敏感信息已脱敏
- ✅ 今日密码: C91EA5E0
- ⏳ 等待推送到GitHub

## 后续更新

每天生成新日记后，执行:
```bash
cd /root/.openclaw/workspace/diary-github
./deploy.sh
```

## 密码管理

- 每日生成新密码
- 密码当日有效
- 次日自动失效

---
准备时间: 2026-03-11 21:23
