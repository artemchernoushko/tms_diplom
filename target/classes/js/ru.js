document.getElementById('validationInput').addEventListener('keypress', fn, false);
$('#validationInput').on('keypress', function() {
    var that = this;

    setTimeout(function() {
        var res = /[^а-я ]/g.exec(that.value);
        console.log(res);
        that.value = that.value.replace(res, '');
    }, 0);
});