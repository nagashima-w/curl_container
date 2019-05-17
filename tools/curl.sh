#!/bin/sh

# テストしたいURLをここに書く
URL="https://www.google.com/";

i=1;
while [ $i -le 100 ];
# 回数を変えたい場合はここの数字を変える
do
    SETDT=`date "+%Y%m%d%H%M%S"`
    curl -o /dev/null $URL;
    sleep 1s;
# 間隔を変更したいときはここの数字を変える
done

