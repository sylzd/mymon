#!/bin/bash
# 1. 找到需要修改的文件,排除掉vendor文件夹
# 2. 对每个文件进行插入文件头工作
for file in `find . -path ./vendor -prune -o -name "*.go" -print `
do
    cat licence.txt | cat - $file > tmp && mv -f tmp $file
done