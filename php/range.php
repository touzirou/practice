<?php
print("---普通に 1 〜 10 までを出力\n");
print("1 to 2\n");
foreach(range(1, 10) as $idx){
    print($idx . "\n");
}

print("---変数で from to を指定\n");
$start = 11;
$end = 20;
print("start : " . $start . ", end : " . $end . "\n");
foreach(range($start, $end) as $idx){
    print($idx . "\n");
}

print("--- from > to を指定\n");
$from = 30;
$to = 21;
print("from : " . $from . ", to : " . $to . "\n");
foreach(range($from, $to) as $idx){
    print($idx . "\n");
}
