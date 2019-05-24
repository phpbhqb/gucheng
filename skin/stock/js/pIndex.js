window.onload = function() {

    var start=$(".more_list_page").attr('start');
    if(start==0){
        getnewstr();
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
                    var newstr='<div class="newListItem box"><div class="newsImg imgAll"><a href="'+news.url+'>"><img src="'+news.pImg+'" width="179" height="123" alt="'+news.alt+'"></a></div><div class="newsCont boxL"><div class="newsTtile"><a href="'+news.url+'">'+news.title+'</a></div><div class="newsTime">'+news.timer+'</div><div class="newsTxt">'+news.cont+'</div></div>';

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



function ajax(url, func) {
            var xmlhttp;
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.open("GET", url, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    func(JSON.parse(xmlhttp.responseText));
                }
            }
        }
        var indexData = {
            status:true
        }
        function drawDash() {
            context.setLineDash([8, 4]);
            context.lineWidth = 2;
            context.strokeStyle = "#ddd";
            context.beginPath()
            //绘制竖线
            context.moveTo(can.width / 4 * 3, 0);
            context.lineTo(can.width / 4 * 3, can.height);
            context.moveTo(can.width / 4 * 1, 0);
            context.lineTo(can.width / 4 * 1, can.height);
            context.moveTo(can.width / 2-1, 0);
            context.lineTo(can.width / 2-1, can.height);
            //绘制虚线
            context.moveTo(0, can.height / 4 * 3);
            context.lineTo(can.width, can.height / 4 * 3);
            context.moveTo(0, can.height / 4 * 1);
            context.lineTo(can.width, can.height / 4 * 1);
            context.moveTo(0, can.height / 2-1);
            context.lineTo(can.width, can.height / 2-1);
            context.stroke();
            context.closePath()
        }

        var draw = function (data) {
            // try {
            context.clearRect(0, 0, can.width, can.height);


            drawDash()


            context.beginPath()
            context.strokeStyle = "#81b6e2";
            context.lineWidth = 3;
            context.setLineDash([]);
            var x = (can.width + 1) / 241;

            //事实数据，主要存放 昨收 最高 最低
            var realData = data.real;
            var trendData = data.trend;
            //股票数据  昨收 最高 最低
            var yesDay = realData.yes;
            var high = realData.high;
            var low = realData.low;


            var hq_data = document.getElementsByClassName('hq_data')[0];
            var b = hq_data.getElementsByTagName('b')[0];
            b.innerHTML = realData.last.toFixed(2) + '<em>' + realData.px.toFixed(2) + '&nbsp;&nbsp;' + realData.px_rate.toFixed(2) + '%</em>';

            context.lineWidth =0.33;


            for (var i = 0; i < trendData.length; i++) {
                var element = trendData[i].avg;
                if (trendData[i].avg > high) {
                    high = trendData[i].avg;
                } else if (trendData[i].avg < low) {
                    low = trendData[i].avg;
                }
            }



            //坐标数据  顶端 低端
            var top = Math.abs(yesDay - high) > Math.abs(yesDay - low) ? Math.abs(yesDay - high) + yesDay : Math.abs(yesDay - low) + yesDay;
            var bottom = Math.abs(yesDay - high) > Math.abs(yesDay - low) ? yesDay - Math.abs(yesDay - high) : yesDay - Math.abs(yesDay - low);

            // context.strokeStyle = "#0d5174";
            context.fillStyle = "rgba(145,189,225,0.4)";
            // context.fillStyle = "#d3e0f0";
            
            context.moveTo(-999, can.height);



            for (var i = 0; i < trendData.length; i++) {
                var element = trendData[i].last;
                var cha = (top - element) / (top - bottom) * can.height;
                context.lineTo(x * i, cha);
                context.stroke();
            }
            context.lineTo(x * i, can.height);

            context.fill();
            context.closePath();

            context.beginPath();
            // console.log(data);
            context.moveTo(0, (top - trendData[1].avg) / (top - bottom) * can.height);
            context.strokeStyle = "#feb120";
            context.lineWidth = 1;
            for (var i = 0; i < trendData.length; i++) {
                var element = trendData[i].avg;
                var cha = (top - element) / (top - bottom) * can.height;
                context.lineTo(x * i, cha);
                context.stroke();
            }
            context.lineTo(x * (i - 1), can.height);
            // context.fill();
            context.closePath();



            // context.lineWidth = 2;
            // context.strokeStyle = '#91bde1';
            // context.strokeRect(0, 0, can.width, can.height);



                
            // } catch (error) {
            //         drawDash()



            //         context.font = '24px Arial';
            //         context.textAlign = 'center';
            //         context.textBaseline = 'middle';
            //         context.fillStyle = "#ccc";
            //         context.fillText('加载中...',can.width/2,can.height/2);
            //     ajax('https://api.gucheng.com/gcw/hq/index_hq2.php?code='+document.getElementsByClassName('on')[0].getAttribute('data-code'), callBack)
            // }


        }

        function callBack(data) {
            if(indexData.status == false){
                return;
            }
            indexData.status == false;
            draw(data)


            can.onmouseover = function (event) {
                this.onmousemove = function (event) {
                    event = event || window.event;

                    context.clearRect(0, 0, can.width, can.height);
                    drawDash()
                    context.beginPath()
                    context.strokeStyle = "#81b6e2";
                    context.lineWidth = 3;
                    context.setLineDash([]);
                    var x = (can.width + 1) / 241;
                    //事实数据，主要存放 昨收 最高 最低
                    var realData = data.real;
                    var trendData = data.trend;

                    //股票数据  昨收 最高 最低
                    var yesDay = realData.yes;
                    var high = realData.high;
                    var low = realData.low;
                    var open = realData.open;
                    context.lineWidth =0.33;
                    for (var i = 0; i < trendData.length; i++) {
                        if (trendData[i].avg > high) {
                            high = trendData[i].avg;
                        } else if (trendData[i].avg < low) {
                            low = trendData[i].avg;
                        }
                    }


                    //坐标数据  顶端 低端
                    var top = Math.abs(yesDay - high) > Math.abs(yesDay - low) ? Math.abs(yesDay - high) + yesDay : Math.abs(yesDay - low) + yesDay;
                    var bottom = Math.abs(yesDay - high) > Math.abs(yesDay - low) ? yesDay - Math.abs(yesDay - high) : yesDay - Math.abs(yesDay - low);






                    // context.strokeStyle = "#0d5174";
                    // context.fillStyle = "#d3e0f0";
            context.fillStyle = "rgba(145,189,225,0.4)";
                    context.moveTo(-999, can.height);



                    for (var i = 0; i < trendData.length; i++) {
                        var element = trendData[i].last;
                        var cha = (top - element) / (top - bottom) * can.height;
                        context.lineTo(x * i, cha);
                        context.stroke();
                    }
                    context.lineTo(x * i, can.height);

                    context.fill();
                    context.closePath();

                    context.beginPath();
                    context.moveTo(0, (top - trendData[1].avg) / (top - bottom) * can.height);
                    context.strokeStyle = "#feb120";
                    context.lineWidth = 1;
                    for (var i = 0; i < trendData.length; i++) {
                        var element = trendData[i].avg;
                        var cha = (top - element) / (top - bottom) * can.height;
                        context.lineTo(x * i, cha);
                        context.stroke();
                    }
                    context.lineTo(x * (i - 1), can.height);
                    // context.fill();
                    context.closePath();



                    context.beginPath();
                    context.strokeStyle = "#91bde1";
                    context.lineWidth = 2;
                    // context.setLineDash([8,4]);


                    var moveX = (event.clientX - event.target.offsetLeft) * 2 > trendData.length * x ? trendData.length * x : (event.clientX - event.target.offsetLeft) * 2;
                    context.moveTo(moveX, 0);
                    context.lineTo(moveX, can.height);
                    context.stroke()
                    var index = Math.floor(moveX / x) > trendData.length ? trendData.length : Math.floor(moveX / x) - 1;
                    index = index - 1;
                    index = index < 0 ? 0 : index;
                    // console.log(trendData)
                    // console.log(trendData[index])
                    var hq_data = document.getElementsByClassName('hq_data')[0];
                    var b = hq_data.getElementsByTagName('b')[0];
                    b.innerHTML = trendData[index].last.toFixed(2) + '<em>' + (trendData[index].last - open).toFixed(2) + '&nbsp;&nbsp;' + (((trendData[index].last - open) / trendData[index].last) * 100).toFixed(2) + '%</em>';

                    context.closePath();

                    context.beginPath();
                    context.fillStyle = "#91bde1";

                    context.arc(moveX, ((top - trendData[index].last) / (top - bottom) * can.height), 6, 0, 2 * Math.PI, false);
                    context.fill();




                }
            }

            this.onmouseout = function (event) {
                    // context.clearRect(0,0,can.width,can.height);
                    event = event || window.event;
                    draw(data)
                    var trendData = data.trend;
                    var realData = data.real;
                    var yesDay = realData.yes;
                    var hq_data = document.getElementsByClassName('hq_data')[0];
                    var b = hq_data.getElementsByTagName('b')[0];
                    b.innerHTML = realData.last.toFixed(2) + '<em>' + realData.px.toFixed(2) + '&nbsp;&nbsp;' + realData.px_rate.toFixed(2) + '%</em>';
                    //b.innerHTML = trendData[trendData.length - 1].last.toFixed(2) + "<em>" + (trendData[trendData.length - 1].last - yesDay).toFixed(2) + '&nbsp;&nbsp;' + (((trendData[trendData.length - 1].last - yesDay) / trendData[trendData.length - 1].last) * 100).toFixed(2) + '%</em>';
                 
            }

            indexData.status == false;
        }









        var canDiv = document.getElementById('hqCanvas');
        var can = canDiv.appendChild(document.createElement('canvas'));
        can.innerHTML = '<img src="https://hq.gucheng.com/hqimg.php?size=1&code=000001" width="168" height="168" alt="股票行情">'
        can.style.width = '100%';    
        can.style.height = '100%';    
        // can.width = canDiv.offsetWidth*2;
        // can.height = canDiv.offsetHeight*2;
        can.width = 340;
        can.height = 140;
        if(can.getContext){
            var context = can.getContext('2d');
            




            drawDash()



            context.font = '24px Arial';
            context.textAlign = 'center';
            context.textBaseline = 'middle';
            context.fillStyle = "#ccc";
            context.fillText('加载中...',can.width/2,can.height/2);
        }
















        try {
            //ajax('https://api.gucheng.com/gcw/hq/getstock.php', function (codeData) {
            ajax('https://hq.gucheng.com/apidata/api/getstock.php', function (codeData) {
                if(codeData[0] == 'error'){
                    canDiv.innerHTML = '<img src="https://hq.gucheng.com/hqimg.php?size=1&code=000001" width="168" height="70" alt="股票行情">'
                    return;
                }
                if(can.getContext){
                    callBack(codeData[0])
                    
                    var ul = document.getElementById('stockUl');
                    var li = ul.getElementsByTagName('li');
                    for (var i = 0; i < li.length; i++) {
                        (function (i) {
                            li[i].onmouseover = function () {
                                can.onmouseover = null;
                                can.onmousemove = null;
                                can.onmouseout = null;
                                for (var j = 0; j < li.length; j++) {
                                    li[j].getElementsByTagName('a')[0].className = '';
                                }
                                li[i].getElementsByTagName('a')[0].className = 'on';
                                callBack(codeData[i])
                                if(i !=0 ){
                                    can.innerHTML = '<img src="https://www.gucheng.com/2016/hq_none.gif">'
                                }else{
                                    can.innerHTML = '<img src="https://hq.gucheng.com/hqimg.php?size=1&code=000001" width="168" height="70" alt="股票行情">'
                                }
                            }
                        }) (i)
                    }
                }else{
                    var trendData = codeData[0].trend;
                    var realData = codeData[0].real;
                    var yesDay = realData.yes;
                    var hq_data = document.getElementById('hq_data');
                    var b = hq_data.getElementsByTagName('b')[0];
                    b.innerHTML = realData.last.toFixed(2) + '<em>' + realData.px.toFixed(2) + '&nbsp;&nbsp;' + realData.px_rate.toFixed(2) + '%</em>';
                    // b.innerHTML = trendData[trendData.length - 1].last.toFixed(2) + "<em>" + (trendData[trendData.length - 1].last - yesDay).toFixed(2) + '&nbsp;&nbsp;' + (((trendData[trendData.length - 1].last - yesDay) / trendData[trendData.length - 1].last) * 100).toFixed(2) + '%</em>';
                }
            });
        } catch (error) {
            canDiv.innerHTML = '<img src="https://hq.gucheng.com/hqimg.php?size=1&code=000001" width="168" height="70" alt="股票行情">'
        }
        
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


