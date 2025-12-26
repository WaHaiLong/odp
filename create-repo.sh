# GitHub仓库创建和推送脚本
# 
# 使用说明：
# 1. 请先在GitHub上创建Personal Access Token
# 2. 将TOKEN替换为您的实际Token
# 3. 运行此脚本

# 设置变量
GITHUB_TOKEN="YOUR_TOKEN_HERE"  # 替换为您的GitHub Personal Access Token
REPO_NAME="simple-webpage"      # 您的仓库名
REPO_DESCRIPTION="一个简单的网页项目，用于演示自动测试和部署"

# 创建GitHub仓库 (需要curl和jq)
create_github_repo() {
    echo "正在创建GitHub仓库..."
    
    # 发送API请求创建仓库
    curl -X POST \
      -H "Authorization: token $GITHUB_TOKEN" \
      -H "Accept: application/vnd.github.v3+json" \
      https://api.github.com/user/repos \
      -d "{\"name\":\"$REPO_NAME\",\"description\":\"$REPO_DESCRIPTION\",\"private\":false}"
}

# 配置并推送代码
setup_and_push() {
    echo "配置远程仓库并推送代码..."
    
    # 添加远程仓库
    git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git
    
    # 推送代码
    git push -u origin main
}

# 主流程
if [ "$GITHUB_TOKEN" = "YOUR_TOKEN_HERE" ]; then
    echo "错误: 请先设置您的GitHub Personal Access Token"
    echo "1. 访问 https://github.com/settings/tokens"
    echo "2. 点击 'Generate new token'"
    echo "3. 选择适当的权限（至少需要repo权限）"
    echo "4. 将生成的token替换脚本中的YOUR_TOKEN_HERE"
    exit 1
fi

create_github_repo
setup_and_push

echo "仓库创建和代码推送完成！"