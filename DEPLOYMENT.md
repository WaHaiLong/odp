# 部署配置指南

## GitHub Pages自动部署（推荐）

您的项目已配置为自动部署到GitHub Pages，这是最简单的部署方式，无需额外配置：

1. 在GitHub仓库中启用Pages服务：
   - 访问您的仓库: https://github.com/WaHaiLong/odp
   - 点击 "Settings" 标签
   - 向下滚动到 "Pages" 部分
   - 在 "Source" 下拉菜单中选择 "Deploy from a branch"
   - 选择 "main" 分支和 "/" 文件夹
   - 点击 "Save"

2. 自动部署：
   - 每次推送到main分支时，GitHub Actions将自动运行测试并部署
   - 您的页面将在 `https://WaHaiLong.github.io/odp` 可用

## 手动部署到服务器

如果您有自己的服务器，可以使用以下方式：

1. 配置服务器信息：
   - 确保服务器上安装了SSH和Web服务器（如Apache或Nginx）
   - 设置目标目录并确保有写入权限

2. 部署脚本：
   - 编辑 `deploy.sh` 脚本并设置您的服务器信息
   - 运行部署脚本：
     ```bash
     chmod +x deploy.sh
     ./deploy.sh
     ```