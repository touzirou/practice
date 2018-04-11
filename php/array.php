<?php

$id = 12345;
$ids = [
    567,
    789,
    901
];

$data1[] = $id;

print_r($data1);

$data2[] = $ids;

print_r($data2);

if (is_array($ids)){
    $data3 = $ids;
}else{
    $data3[] = $ids;
}

print_r($data3);

if (is_array($id)){
    $data4 = $id;
}else{
    $data4[] = $id;
}

print_r($data4);
