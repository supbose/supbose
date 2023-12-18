#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# touch test.txt

cur_dateTime="date +%Y-%m-%d,%H:%m:%s"

echo "${cur_dateTime}" > GithubPages


  msg='来自github actions的自动部署'
  # githubUrl=https://supbose:${Ac_TOKEN}@github.com/supbose/supbose.git
  git config --global user.name "supbose"
  git config --global user.email "yshxw@qq.com"

git init
git add -A
git commit -m "${msg}"
# git push -f $githubUrl
git push --all

