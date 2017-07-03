$(function(){
    $('#tweet_search').click(function(){

        $('#result').empty();

        if($('#condition').val().length == 0){
            $('#result').append('検索するtweet文を入力して下さい');
            return;
        }

        $.post('../php/twitter.php',{
            'condition': $('#condition').val(),
            'count': $('#count').val()
        })
        .done(function(data){

            var tweets = JSON.parse(data);
            if(tweets.statuses.length == 0){
                $('#result').append('見つかりませんでした');
                return;
            }
            var table_tag = $("<table border='1' />");
            var thead_tag = $("<thead />");
            var tbody_tag = $("<tbody />");
            thead_tag.append("<tr><th>時間</th><th>内容</th></tr>");
            
            tweets.statuses.forEach(function(tweet, index, ary){
                tbody_tag.append('<tr><td>' + tweet.created_at + '</td><td>' + tweet.text + '</td></tr>');
            });
            table_tag.append(thead_tag, tbody_tag);
            $('#result').append(table_tag);
        });
    });
    $('#user_search').click(function(){

        $('#result').empty();

        if($('#screen_name').val().length == 0){
            $('#result').append('検索するユーザ名を入力して下さい');
            return;
        }

        $.post('../php/twitter.php',{
            'screen_name': $('#screen_name').val(),
            'count': $('#count').val()
        })
        .done(function(data){

            if(data.length == 0){
                $('#result').append('見つかりませんでした');
                return;
            }

            var tweets = JSON.parse(data);
            var table_tag = $("<table border='1' />");
            var thead_tag = $("<thead />");
            var tbody_tag = $("<tbody />");
            thead_tag.append("<tr><th>時間</th><th>内容</th></tr>");
            
            tweets.forEach(function(tweet, index, ary){
                tbody_tag.append('<tr><td>' + tweet.created_at + '</td><td>' + tweet.text + '</td></tr>');
            });
            table_tag.append(thead_tag, tbody_tag);
            $('#result').append(table_tag);
        });
    });
});