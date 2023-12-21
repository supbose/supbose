#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

cur_dateTime="date +%Y-%m-%d,%H:%m:%s"

echo "${cur_dateTime}" > GithubPages


  msg='来自Aliyun Codeup Flow 的自动部署'
  githubUrl=https://supbose:${GITHUB_TOKEN}@github.com/supbose/supbose.git
  git config --global user.name "supbose"
  git config --global user.email "yshxw@qq.com"

git init
git add -A
git commit -m "${msg}"
git remote set-url origin $githubUrl
git push --all