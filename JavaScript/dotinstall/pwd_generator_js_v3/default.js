(function(){
    'use strict';

    var slider = document.getElementById('slider');
    var label = document.getElementById('label');

    slider.addEventListener('change', function(){
        label.innerHTML = this.value;
    });
})();