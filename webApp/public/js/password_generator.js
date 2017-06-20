(function(){
    'use strict';

    // 画面の項目
    var slider  = document.getElementById('slider');  // パスワード文字数
    var label   = document.getElementById('label');   // 指定中のパスワード文字数
    var btn     = document.getElementById('btn');     // パスワード生成ボタン
    var result  = document.getElementById('result');  // 生成したパスワード
    var numbers = document.getElementById('numbers'); // パスワードに数字を含めるか
    var symbols = document.getElementById('symbols'); // パスワードに記号を含めるか

    // パスワード生成
    function getPassword(){
        var seed_letters = 'abcdefghijklmnopqrstuvwxyz';
        var seed_numbers = '0123456789';
        var seed_symbols = '!#$%&()';
        var seed;
        var len = slider.value;
        var pwd = '';

        // アルファベット
        seed = seed_letters + seed_letters.toUpperCase();
        if(numbers.checked){
            // 数字
            seed += seed_numbers;
        }
        if(symbols.checked){
            // 記号
            seed += seed_symbols;
        }

        while(len--){
            pwd += seed[Math.floor(Math.random() * seed.length)];
        }

        result.value = pwd;
    }

    // パスワード文字数変更時
    slider.addEventListener('change', function(){
        label.innerHTML = this.value;
    });

    // パスワード生成ボタン押下時
    btn.addEventListener('click', function(){
        getPassword();
    });

    // パスワード選択時
    result.addEventListener('click', function(){
        this.select();
    });
})();