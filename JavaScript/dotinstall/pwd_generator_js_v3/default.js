(function(){
    'use strict';

    var slider = document.getElementById('slider');
    var label = document.getElementById('label');
    var btn = document.getElementById('btn');
    var result = document.getElementById('result');
    var numbers = document.getElementById('numbers');
    var symbols = document.getElementById('symbols');

    slider.addEventListener('change', function(){
        label.innerHTML = this.value;
    });

    function getPassword(){
        var seed_letters = 'abcdefghijklmnopqrstuvwxyz';
        var seed_numbers = '0123456789';
        var seed_symbols = '!#$%&()';
        var seed;
        var len = slider.value;
        var pwd = '';

        seed = seed_letters + seed_letters.toUpperCase();
        if(numbers.checked){
            seed += seed_numbers;
        }
        if(symbols.checked){
            seed += seed_symbols;
        }

        while(len--){
            pwd += seed[Math.floor(Math.random() * seed.length)];
        }

        result.value = pwd;
    }

    btn.addEventListener('click', function(){
        getPassword();
    });

    result.addEventListener('click', function(){
        this.select();
    });

    getPassword();

})();