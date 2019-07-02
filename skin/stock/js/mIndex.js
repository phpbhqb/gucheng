window.onload = function() {
    /*for (var i = 0; i < 20; i++) {
        $(".newsList").append(
            '<div class="newsListItem box">' +
            '<div class="newsImg"><img src="' + json[i].mImg + '"></div>' +
            '<div class="newsCont boxL">' +
            '<h2>' + json[i].title + '</h2>' +
            '<p>' + json[i].nth + '</p>' +
            '</div>' +
            '</div>'
        )
    }*/

    var start=$(".moreNews").attr('start');
    if(start==0){
        getnewstr();
    }
    $(".moreNews").click(function() {
        if ($(document).scrollTop() >= $(document).height() - $(window).height() - 100) {
            //alert("滚动条已经到达底部为" + $(document).scrollTop());
            /*var n = $(".newListItem").length;
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
            }*/
            getnewstr();
        }
    })
}

function getnewstr(){
    var start=$(".moreNews").attr('start');
    var classid=$(".moreNews").attr('cid');
    var order =$(".moreNews").attr('order');
    var type =$(".moreNews").attr('type');
    var key=$(".moreNews").attr('key');
    $.ajax({
        url: newsurl+'e/action/ListInfo/json.php?start='+start+'&classid='+classid+'&order='+order+'&type='+type+'&key='+key,
        type: 'GET',
        dataType: 'json',
        async:false,
        success:function(response){
            if(response){
                $.each(response,function(i,news){
                    start ++;
                    var  titleurl=newsurl+'e/wap/show.php?id='+news.id;
                    var newstr='<div class="newListItem box"><div class="newsImg"><a href="'+titleurl+'>"><img src="'+news.pImg+'"  alt="'+news.alt+'" onerror="javascript:this.src='+newsurl+'skin/stock/images/list_default.jpg"></a></div><div class="newsCont boxL"><h2><a href="'+titleurl+'">'+news.title+'</a></h2><p>'+news.befrom+'</p></div></div>';
                    $('.newsList').append(newstr);
                });
                $(".moreNews").attr('start',start);
            }
        }
    })
}