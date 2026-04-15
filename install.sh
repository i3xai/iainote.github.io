#!/bin/bash
# iainote 安装脚本
set -e

echo "正在安装 iainote..."

# 检测操作系统
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$ID
else
    OS="linux"
fi

echo "检测到操作系统: $OS"
echo "正在下载 iainote CLI..."

# 这里替换为实际的下载链接
DOWNLOAD_URL="https://iainote.iaiaiai.cc/downloads/iainote-linux-amd64"

curl -fsSL "$DOWNLOAD_URL" -o /tmp/iainote || {
    echo "下载失败，请检查网络或联系支持"
    exit 1
}

chmod +x /tmp/iainote
sudo mv /tmp/iainote /usr/local/bin/iainote

echo "安装成功！运行 'iainote --help' 开始使用"
