(function(){
    'use strict';

    // スライダー変更
    var slider = document.getElementById('slider');
    var label = document.getElementById('label');
    slider.addEventListener('change', function(){
        label.innerHTML = this.value;
    });

    // パスワード生成
    var btn = document.getElementById('btn');
    var result = document.getElementById('result');
    function getPassword(){
        result.value = 'f8asdf8asdf';
    }

    btn.addEventListener('click', function(){
        getPassword();
    });

    result.addEventListener('click', function(){
        this.select();
    });

    getPassword();

})();