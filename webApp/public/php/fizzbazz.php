<?php
/**
 * 1 から順に数を出力し。
 * 但し、その数が 3 で割り切れるならば数字の代わりに Fizz 
 * 5 で割り切れるなら Buzz を出力
 * 3と5の公倍数の時は、FizzBuzz を出力する
 * 終端の数は引数とする
 *
 * ※ あえて、余剰算は使わない
 */

if (empty($_POST["param"])){
    return;
}

for($i = 1; $i <= (int)$_POST["param"]; $i++){

    $fizzbazz = '';

    // 除算したとき、小数点以下が 0 であれば出力
    if(($i / 3) - floor($i / 3) == 0){
        $fizzbazz .= "Fizz";
    }
    if(($i / 5) - floor($i / 5) == 0){
        $fizzbazz .= "Bazz";
    }
    if(empty($fizzbazz)){
        $fizzbazz .= $i;
    }

    echo $fizzbazz . PHP_EOL;
}
echo PHP_EOL;