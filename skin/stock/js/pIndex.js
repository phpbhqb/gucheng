window.onload = function() {

    var start=$(".more_list_page").attr('start');
    if(start==0){
        getnewstr();
    }

    $('.wrap div').mouseover(function() {
        var i = $(this).index(); //下标第一种写法
        //var i = $('tit').index(this);//下标第二种写法
        $(this).addClass('active').siblings().removeClass('active');
        $('.title li').eq(i).show().siblings().hide();
    });


}
window.onscroll = function() {
    if ($(document).scrollTop() >= $(document).height() - $(window).height() - 100) {
        getnewstr();
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


function getnewstr(){
    var start=$(".more_list_page").attr('start');
    var classid=$(".more_list_page").attr('cid');
    var order =$(".more_list_page").attr('order');
    var type =$(".more_list_page").attr('type');
    var key=$(".more_list_page").attr('key');
    $.ajax({
        url: newsurl+'e/action/ListInfo/json.php?start='+start+'&classid='+classid+'&order='+order+'&type='+type+'&key='+key,
        type: 'GET',
        dataType: 'json',
        async:false,
        success:function(response){
            if(response){
                $.each(response,function(i,news){
                    start ++;
                    var newstr='<div class="newListItem box"><div class="newsImg imgAll"><a href="'+news.url+'"><img src="'+news.pImg+'" width="179" height="123" alt="'+news.alt+'" onerror="javascript:this.src=\''+newsurl+'skin/stock/images/list_default.jpg'"></a></div><div class="newsCont boxL"><div class="newsTtile"><a href="'+news.url+'">'+news.title+'</a></div><div class="newsTime">'+news.timer+'</div><div class="newsTxt">'+news.cont+'</div></div>';

                    if(news.istop==1){
                        newstr+='<div class="roofsImg" style="display: block;"><img src="'+newsurl+'skin/stock/images/roofsImg.png"></div</div>';
                    }
                    $('.newList').append(newstr);
                });
                $(".more_list_page").attr('start',start);
            }
        }
    })
}

// 点击喜欢更多
$(function(){
    $('#morelike').click(function(){
        $.ajax({
            url: newsurl+'e/action/ListInfo/like.php',
            type: 'GET',
            dataType: 'json',
            async:false,
            success:function(response){
                if(response){
                    $('#like_list').html('');
                    $.each(response,function(i,news){
                        var newstr='<li><a href="'+news.titleurl+'">'+news.ftitle+'</a></li>';
                        $('#like_list').append(newstr);
                    });
                }
            }
        })
    });
})
        
$(function(){
    $('.sec img').click(function(){
        var key=$('#search_key').val();
        if(key==''){
            alert('请输入搜索词');
            return false;
        }
        window.location.href=newsurl+'sousuo/?key='+key;
    });

})


