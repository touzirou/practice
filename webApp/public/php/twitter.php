<?php
// リクエストURL

$get_url = "http://twitter.nantonaku-rt58.com/get";
$search_url = "http://twitter.nantonaku-rt58.com/search";
$data = [];
$url = "";

// POSTするデータ
if(!empty($_POST["condition"])){
    $data = array('condition' => $_POST["condition"], 'count' => $_POST["count"]);
    $url = $search_url;
}else{
    $data = array('screen_name' => $_POST["screen_name"], 'count' => $_POST["count"]);
    $url = $get_url;
}
$content = http_build_query($data);
$content_length = strlen($content);
$options = array(   'http' => array(
                  'method' => 'POST',
                  'header' => "Content-Type: application/x-www-form-urlencoded\r\n". "Content-Length: $content_length",
                 'content' => $content));
print(file_get_contents($url, false, stream_context_create($options)));