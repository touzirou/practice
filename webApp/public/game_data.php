<?php
include('../function/MysqlConnector.php');

$myclass = new MysqlConnector();
$result_list = $myclass->search();
$release_date_list = array();
$table_html = '';
$navigation_html = '';

$target_release_date = '';
foreach($result_list as $result){
    if(empty($target_release_date)){
        $target_release_date = $result['releaseDate'];
        array_push($release_date_list, $target_release_date);
        print_header();
    }
    if($result['releaseDate'] != $target_release_date){ 
        print_footer();
        $target_release_date = $result['releaseDate'];
        print_header();
        array_push($release_date_list, $target_release_date);
    }
    $table_html .= '<tr>';
    $table_html .= '  <td>' . $result['cName'] . '</td>';
    $table_html .= '  <td><a href="' . $result['url'] . '" target="_BLANK">' . $result['name'] . '</p></td>';
    $table_html .= '  <td>' . $result['releaseDate'] . '</td>';
    $table_html .= '</tr>';
}
print_footer();

print_link_list();

print($navigation_html);
print($table_html);

function print_header(){
    global $target_release_date, $table_html;
    $r_date = str_replace("/", "", $target_release_date);
    $table_html .= '<article>';
    $table_html .= '<h2 id="' . $r_date . '">' . $target_release_date . '</h2>';
    $table_html .= '<table border="1">';
    $table_html .= '<thead>';
    $table_html .= '  <tr>';
    $table_html .= '    <th class="category">カテゴリ</th><th class="title">タイトル</th><th class="release">発売日</th>';
    $table_html .= '  </tr>';
    $table_html .= '</thead>';
    $table_html .= '<tbody>';
}

function print_footer(){
    global $table_html;
    $table_html .= '</tbody>';
    $table_html .= '</table>';
    $table_html .= '</article>';
}

function print_link_list(){
    global $release_date_list, $navigation_html;
    $target_y = '';
    $target_m = '';
    $target_d = '';
    $day_list = array();
    foreach($release_date_list as $r_date){
        $s_release_date = explode("/", $r_date);
        if(empty($target_y)){
            $target_y = $s_release_date[0];
            $target_m = $s_release_date[1];
            $navigation_html .= '<h3>' . $target_y . '年</h3>' . $target_m . '月';
        }

        if($target_y != $s_release_date[0]){
            $target_y = $s_release_date[0];
            $target_m = $s_release_date[1];
            $navigation_html .= implode(',', $day_list);
            $day_list = array();
            $navigation_html .= '<h3>' . $target_y . '年</h3>' . $target_m . '月';
        }else if($target_m != $s_release_date[1]){
            $target_m = $s_release_date[1];
            $navigation_html .= implode(',', $day_list);
            $day_list = array();
            $navigation_html .= '<br>' . $target_m . '月';
        }
        $target_d = $s_release_date[2];
        array_push($day_list, '<a href="#' . str_replace("/", "", $r_date) . '">' . $target_d . '</a>');
    }
    $navigation_html .= implode(',', $day_list);
}
