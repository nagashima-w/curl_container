#!/bin/sh

# テストしたいURLをここに書く
URL="https://www.google.com/";

i=1;
# 回数を変えたい場合はここの数字を変える
while [ $i -le 100 ];
do
    SETDT=`date "+%Y%m%d%H%M%S"`
    curl -o /dev/null $URL;
# 間隔を変更したいときはここの数字を変える
# sleepが不要(待つ必要がない)なときはsleepの行ごと削除して使う
    sleep 1s;
done

