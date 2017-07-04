<?php
include('../../function/MysqlConnector.php');

$mysqlConn = new MysqlConnector();
$result_list = $mysqlConn->search();
$response = [];

foreach($result_list as $result){
    $releaseDate = $result["releaseDate"];
    if(count($response[$releaseDate]) == 0){
        $response[$releaseDate] = array($result);
    }else{
        array_push($response[$releaseDate], $result);
    }
}

print(json_encode($response));