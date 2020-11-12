#! /bin/bash
##Author:Terry Chan
##Url: https://terrychan.org
## 一个自动配置vim脚本


#安装软件以及依赖
sudo apt-get update
sudo apt-get install vim wget git
mkdir ~/.vim

mkdir ~/.vim/bundle/
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#获取配置文件
#wget -O .vimrc https://raw.githubusercontent.com/napoler/Terry_vim/master/.vimrc
#wget -O .vimrc https://git.io/Jktt1
wget -O ~/.vimrc https://gitee.com/terrychan/Terry_vim/raw/master/.vimrc

#开始自动获取插件
vim +PluginInstall +qall
#安装单个插件
# vim +'PluginInstall! vim-markdown' +qall

echo "可以修改以下文件进行自定义"
echo ~/.vimrc
# 跳转到帮助网页
exo-open --launch WebBrowser https://www.terrychan.org/Terry_vim

