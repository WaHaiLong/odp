# 服务器部署配置指南

## 本地部署

要将页面部署到您自己的服务器，请按以下步骤操作：

1. 编辑 `deploy.sh` 脚本并设置您的服务器信息：
   - `SERVER_HOST`: 您的服务器IP地址
   - `SERVER_USER`: 您的服务器用户名
   - `SERVER_PORT`: SSH端口（默认22）
   - `SERVER_PATH`: 服务器上的目标路径

2. 确保您的服务器上已安装必要的工具：
   - SSH
   - rsync

3. 运行部署脚本：
   ```bash
   chmod +x deploy.sh
   ./deploy.sh
   ```

## GitHub Actions自动部署

要启用GitHub Actions自动部署到服务器：

1. 在GitHub仓库设置中添加以下Secrets：
   - `HOST`: 服务器IP地址
   - `USERNAME`: 服务器用户名
   - `KEY`: SSH私钥内容
   - `PORT`: SSH端口（默认22）
   - `TARGET_PATH`: 服务器上的目标路径

2. 当您推送到main分支时，GitHub Actions将自动部署到您的服务器

## 服务器要求

您的服务器需要：
- SSH访问权限
- Web服务器（如Apache或Nginx）配置好目标路径
- 对目标目录的写入权限