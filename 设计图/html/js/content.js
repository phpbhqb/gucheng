window.onscroll = function() {
    var s = $(window).scrollTop();
    var h = $(".contR").offset().top;
    if (s >= 1080) {
        var y = 0;
        $(".contR").css('top', (s - 1080) + 'px')
    }
    if (s <= 1080) {
        $(".contR").css('top', 0 + 'px')
    }
}