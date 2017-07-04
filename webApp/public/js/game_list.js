$(function(){
    // 画面読み込み時
    $(document).ready(function(){

        // PHP 呼び出し
        $.post('../php/game_list.php',{
        })
        // PHP 処理完了後の処理
        .done(function(data){
            var game_list = JSON.parse(data);
            if(game_list.length == 0){
                $('#result').append('見つかりませんでした');
                return;
            }
            Object.keys(game_list).forEach(function(key) {
                var h2_tag = $("<h2 />");
                var table_tag = $("<table border='1' />");
                var thead_tag = $("<thead />");
                var tbody_tag = $("<tbody />");
                h2_tag.append(key);
                thead_tag.append('<tr><th class="category">カテゴリ</th><th>タイトル</th></tr>');
                game_list[key].forEach(function(game, index, ary){
                    tbody_tag.append('<tr><td>' + game.cName + '</td><td>' + game.name + '</td></tr>');
                });
                table_tag.append(thead_tag, tbody_tag);
                $('#result').append(h2_tag);
                $('#result').append(table_tag);
            });
        });
    });
});