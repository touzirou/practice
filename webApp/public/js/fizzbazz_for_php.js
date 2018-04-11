$(function(){
    $('#exec').click(function(){
        $('result').empty();

        if($('#count').val().length == 0){
            $('$result').append('カウント数を入植して下さい');
        }

        $.post('../php/fizzbazz.php', 
            {
                "param" : $('#count').val()
            }).done(function(data){
                $('#result').append(data);
            });
    });
});