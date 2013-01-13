#!/bin/bash
find . -type f \( -name "*.htm" -o -name "*.html" \)|while read line;do
echo $line
cconv -f utf-8 -t utf8-tw $line -o ${line}.zh_TW
mv $line ${line}.zh_CN
mv ${line}.zh_TW $line
done
find . -type f -name "*.zh_CN" -exec rm -f {} \;
