window.onload = function() {
    for (var i = 0; i < 20; i++) {
        $(".newList").append(
            '<div class="newListItem box">' +
            '<div class="newsImg imgAll"><img src="' + json[i].pImg + '"></div>' +
            '<div class="newsCont boxL">' +
            '<div class="newsTtile">' + json[i].title + i + '</div>' +
            '<div class="newsTime">' + json[i].timer + '</div>' +
            '<div class="newsTxt">' + json[i].cont + '</div>' +
            '</div>' +
            '<div class="roofsImg"><img src="./images/roofsImg.png"></div>' +
            '</div>'
        )
        if(json[i].roofsImg == "1"){
            $(".roofsImg").show();
        }
    }

    $('.wrap div').click(function() {
        var i = $(this).index(); //下标第一种写法
        //var i = $('tit').index(this);//下标第二种写法
        $(this).addClass('active').siblings().removeClass('active');
        $('.title li').eq(i).show().siblings().hide();
    });
}
window.onscroll = function() {
    if ($(document).scrollTop() >= $(document).height() - $(window).height() - 100) {
        //alert("滚动条已经到达底部为" + $(document).scrollTop());
        var n = $(".newListItem").length;
        for (var i = 0; i < 20; i++) {
            $(".newList").append(
                '<div class="newListItem box">' +
                '<div class="newsImg imgAll"><img src="' + json[n + i].pImg + '"></div>' +
                '<div class="newsCont boxL">' +
                '<div class="newsTtile">' + json[n + i].title + (n + i) + '</div>' +
                '<div class="newsTime">' + json[n + i].timer + '</div>' +
                '<div class="newsTxt">' + json[n + i].cont + '</div>' +
                '</div>' +
                '<div class="roofsImg"><img src="./images/roofsImg.png"></div>' +
                '</div>'
            )
        }
    }
    var s = $(window).scrollTop();
    var w = $(window).height();
    var h = $(".contR").outerHeight();
    var y = $(".contR").offset().left;
    var t = $(".focusing").offset().top;
    // console.log(t);
    // console.log(s);
    if (s >= t) {
        $(".contR").addClass('contRaCtive');
        $(".contR").css('left',y+'px');
    }
    if (s <= h) {
        $(".contR").removeClass('contRaCtive');
        $(".contR").attr({"style":"left:auto"});
        $(".contR").css('right', 0 + 'px');
    }
}