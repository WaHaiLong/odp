#!/bin/bash

# 部署脚本 - 支持多种部署方式

# 默认部署到GitHub Pages
# 要使用此脚本，您需要先在GitHub上启用Pages服务

echo "正在准备部署到GitHub Pages..."
echo "请确保您已在GitHub仓库设置中启用了Pages服务"
echo "访问路径: Settings > Pages > Source > Deploy from a branch > main"

echo "部署准备完成！"
echo "要部署到您自己的服务器，请配置服务器信息并使用rsync命令"

echo "当前文件可以直接通过GitHub Pages访问"