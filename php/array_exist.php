<?php
echo("空配列かどうかをチェックするためには何が良い？\n");
$ary = [];

if($ary){
    echo("直指定 は true\n");
}

if(empty($ary)){
    echo("empty は true\n");
}

if(count($ary) == 0){
    echo("count は true\n");
}

## 実行結果は
### empty は true
### count は true

echo("じゃあ、空の文字が一つだけ定義されてる時は？\n");
$ary = [""];

if($ary){
    echo("直指定 は true\n");
}

if(empty($ary)){
    echo("empty は true\n");
}

if(count($ary) == 0){
    echo("count は true\n");
}

if(empty(array_filter($ary))){
    echo("array_filter は true\n");
}

## 実行結果は
### 直指定 は true