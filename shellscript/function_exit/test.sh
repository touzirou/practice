#!/bin/sh

##
# ファンクション内で exit 終了した場合、
# 後続の処理がスキップされることを確認
#####
function func(){
    echo "function"
    exit
}

echo "main"
func
echo "end"
