#!/bin/sh

# テストしたいURLをここに書く
URL="https://setsuzokusitai.url";

for i in {0..100}
# 回数を変えたい場合はここの数字を変える
do
    SETDT=`date "+%Y%m%d%H%M%S"`
    curl -o /dev/null $URL
    sleep 1;
# 間隔を変更したいときはここの数字を変える
done