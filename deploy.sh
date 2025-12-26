#!/bin/bash

# 服务器部署脚本

# 配置您的服务器信息
SERVER_HOST="your-server-ip"
SERVER_USER="username"
SERVER_PORT="22"
SERVER_PATH="/var/www/html"

# 检查是否安装了必要的工具
if ! command -v rsync &> /dev/null; then
    echo "错误: 未找到 rsync 工具"
    exit 1
fi

# 部署文件到服务器
deploy_to_server() {
    echo "开始部署到服务器..."
    
    # 使用rsync同步文件到服务器
    rsync -avz -e "ssh -p $SERVER_PORT" --delete \
        --exclude 'node_modules' \
        --exclude '.git' \
        ./ $SERVER_USER@$SERVER_HOST:$SERVER_PATH
    
    if [ $? -eq 0 ]; then
        echo "部署成功完成！"
        echo "访问地址: http://$SERVER_HOST"
    else
        echo "部署失败！"
        exit 1
    fi
}

# 执行部署
if [ -z "$SERVER_HOST" ] || [ "$SERVER_HOST" = "your-server-ip" ]; then
    echo "错误: 请先配置服务器IP地址"
    echo "编辑此脚本并设置正确的SERVER_HOST值"
    exit 1
fi

deploy_to_server

echo "所有文件已成功部署到服务器！"