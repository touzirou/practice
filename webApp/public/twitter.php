<?php
// リクエストURL

$get_url = "http://twitter.nantonaku-rt58.com/get";
$search_url = "http://twitter.nantonaku-rt58.com/search";

// POSTするデータ

if(!empty($_POST["condition"])){

$data = array('condition' => $_POST["condition"], 'count' => $_POST["count"]);


$content = http_build_query($data);

$content_length = strlen($content);

$options = array('http' => array(

    'method' => 'POST',

    'header' => "Content-Type: application/x-www-form-urlencoded\r\n"

            . "Content-Length: $content_length",

    'content' => $content));

$response = file_get_contents($search_url, false, stream_context_create($options));
}else{

$data = array('screen_name' => $_POST["screen_name"], 'count' => $_POST["count"]);


$content = http_build_query($data);

$content_length = strlen($content);

$options = array('http' => array(

    'method' => 'POST',

    'header' => "Content-Type: application/x-www-form-urlencoded\r\n"

            . "Content-Length: $content_length",

    'content' => $content));

$response = file_get_contents($get_url, false, stream_context_create($options));
}
?>

<!DOCTYPE html>
<html lang='ja'>
  <head>
    <meta charset='utf-8'>
    <title>get</title>
  </head>
  <body>
    <p>
    <?php
    	print_r(str_replace("\n", '<br>', $response));
    ?>
    </p>
  </body>
</html>
