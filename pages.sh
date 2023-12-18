#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

cur_dateTime="date +%Y-%m-%d,%H:%m:%s"

echo "${cur_dateTime}" > GithubPages
git config --global user.name "supbose"
git config --global user.email "yshxw@qq.com"


# githubUrl=https://github.com/supbose/supbose.git
githubUrl=https://supbose:${secrets.AC_TOKEN}@github.com/supbose/supbose.git
commit_info=`git describe --all --always --long`
push_branch=pages # 推送的分支

git init
git add -A
git commit -m "deploy, $commit_info"
git push -f $githubUrl HEAD:$push_branch



# if [ -z "$Ac_TOKEN" ]; then
#   msg='main to pages'
#   githubUrl=git@github.com:supbose/supbose.git
# else
#   msg='来自github actions的自动部署'
#   githubUrl=https://supbose:${Ac_TOKEN}@github.com/supbose/supbose.git
#   git config --global user.name "supbose"
#   git config --global user.email "yshxw@qq.com"
# fi
# git init
# git add -A
# git commit -m "${msg}"
# git push -f $githubUrl H:pages
