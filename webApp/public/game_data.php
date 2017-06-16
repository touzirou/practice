<?php
include('../function/MysqlConnector.php');

$myclass = new MysqlConnector();
$result_list = $myclass->search();
foreach($result_list as $result){
    print('<tr>');
    print('  <td><a href="' . $result['url'] . '">' . $result['name'] . '</p></td>');
    print('  <td>' . $result['releaseDate'] . '</td>');
    print('</tr>');
}