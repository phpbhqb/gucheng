window.onload = function() {
    for (var i = 0; i < 2; i++) {
        $(".newsList").append(
            '<div class="newsListItem box">' +
            '<div class="newsImg"><img src="' + json[i].mImg + '"></div>' +
            '<div class="newsCont boxL">' +
            '<h2>' + json[i].title + '</h2>' +
            '<p>' + json[i].nth + '</p>' +
            '</div>' +
            '</div>'
        )
    }
    $(".moreNews").click(function() {
        if ($(document).scrollTop() >= $(document).height() - $(window).height() - 100) {
            //alert("滚动条已经到达底部为" + $(document).scrollTop());
            var n = $(".newListItem").length;
            for (var i = 0; i < 20; i++) {
                $(".newsList").append(
                    '<div class="newsListItem box">' +
                    '<div class="newsImg"><img src="' + json[n + i].mImg + '"></div>' +
                    '<div class="newsCont boxL">' +
                    '<h2>' + json[n + i].title + '</h2>' +
                    '<p>' + json[n + i].nth + '</p>' +
                    '</div>' +
                    '</div>'
                )
            }
        }
    })
}