var isMobile = false;
var pingbi = false;
var RESearch = false;
var u = navigator.userAgent;
if (u.match(/AppleWebKit.*Mobile.*/) || u.match(/IEMobile/) || u.match(/Windows Phone/) || u.match(/Android/) || u.match(/iPhone/) || u.match(/iPad/)){isMobile = true;}
//反过滤
function fgl(fid) {
    return '<scr' + 'ipt type="text/javascript" src="//dm.gucheng.com/' + fid + '"></scr' + 'ipt>';
}

if (isMobile == true)
{
    var link = document.createElement("link");
    link.setAttribute("rel", "stylesheet");
    link.setAttribute("type", "text/css");
    link.setAttribute("href", "/2016/ind_wap.css");
    document.getElementsByTagName("head")[0].appendChild(link);
}

if (u.indexOf('MQQBrowser') > -1 || u.indexOf('MiuiBrowser') > -1 || u.indexOf('mso_app') > -1 ||  u.indexOf('UCBrowser') > -1 ||  u.indexOf('LieBaoFast') > -1 ||  u.indexOf('SogouMobileBrowser') > -1 ||  u.indexOf('Mb2345Browser') > -1)
{
    pingbi = true;
}
var BDSearch = false;
if(document.referrer.match(/(.*)baidu.cn/g) || document.referrer.match(/(.*)sogou.com/g)){BDSearch = true;}

var lessThenIE8 = function () {
    var UA = navigator.userAgent,
        isIE = UA.indexOf('MSIE') > -1,
        v = isIE ? /\d+/.exec(UA.split(';')[1]) : 'no ie';
    return v <= 8;
}();

if(lessThenIE8){
;window.Modernizr=function(a,b,c){function y(a){j.cssText=a}function z(a,b){return y(m.join(a+";")+(b||""))}function A(a,b){return typeof a===b}function B(a,b){return!!~(""+a).indexOf(b)}function C(a,b,d){for(var e in a){var f=b[a[e]];if(f!==c)return d===!1?a[e]:A(f,"function")?f.bind(d||b):f}return!1}var d="2.6.2",e={},f=!0,g=b.documentElement,h="modernizr",i=b.createElement(h),j=i.style,k,l={}.toString,m=" -webkit- -moz- -o- -ms- ".split(" "),n={svg:"https://www.w3.org/2000/svg"},o={},p={},q={},r=[],s=r.slice,t,u=function(a,c,d,e){var f,i,j,k,l=b.createElement("div"),m=b.body,n=m||b.createElement("body");if(parseInt(d,10))while(d--)j=b.createElement("div"),j.id=e?e[d]:h+(d+1),l.appendChild(j);return f=["&#173;",'<style id="s',h,'">',a,"</style>"].join(""),l.id=h,(m?l:n).innerHTML+=f,n.appendChild(l),m||(n.style.background="",n.style.overflow="hidden",k=g.style.overflow,g.style.overflow="hidden",g.appendChild(n)),i=c(l,a),m?l.parentNode.removeChild(l):(n.parentNode.removeChild(n),g.style.overflow=k),!!i},v=function(b){var c=a.matchMedia||a.msMatchMedia;if(c)return c(b).matches;var d;return u("@media "+b+" { #"+h+" { position: absolute; } }",function(b){d=(a.getComputedStyle?getComputedStyle(b,null):b.currentStyle)["position"]=="absolute"}),d},w={}.hasOwnProperty,x;!A(w,"undefined")&&!A(w.call,"undefined")?x=function(a,b){return w.call(a,b)}:x=function(a,b){return b in a&&A(a.constructor.prototype[b],"undefined")},Function.prototype.bind||(Function.prototype.bind=function(b){var c=this;if(typeof c!="function")throw new TypeError;var d=s.call(arguments,1),e=function(){if(this instanceof e){var a=function(){};a.prototype=c.prototype;var f=new a,g=c.apply(f,d.concat(s.call(arguments)));return Object(g)===g?g:f}return c.apply(b,d.concat(s.call(arguments)))};return e}),o.touch=function(){var c;return"ontouchstart"in a||a.DocumentTouch&&b instanceof DocumentTouch?c=!0:u(["@media (",m.join("touch-enabled),("),h,")","{#modernizr{top:9px;position:absolute}}"].join(""),function(a){c=a.offsetTop===9}),c},o.svg=function(){return!!b.createElementNS&&!!b.createElementNS(n.svg,"svg").createSVGRect},o.inlinesvg=function(){var a=b.createElement("div");return a.innerHTML="<svg/>",(a.firstChild&&a.firstChild.namespaceURI)==n.svg},o.svgclippaths=function(){return!!b.createElementNS&&/SVGClipPath/.test(l.call(b.createElementNS(n.svg,"clipPath")))};for(var D in o)x(o,D)&&(t=D.toLowerCase(),e[t]=o[D](),r.push((e[t]?"":"no-")+t));return e.addTest=function(a,b){if(typeof a=="object")for(var d in a)x(a,d)&&e.addTest(d,a[d]);else{a=a.toLowerCase();if(e[a]!==c)return e;b=typeof b=="function"?b():b,typeof f!="undefined"&&f&&(g.className+=" "+(b?"":"no-")+a),e[a]=b}return e},y(""),i=k=null,function(a,b){function k(a,b){var c=a.createElement("p"),d=a.getElementsByTagName("head")[0]||a.documentElement;return c.innerHTML="x<style>"+b+"</style>",d.insertBefore(c.lastChild,d.firstChild)}function l(){var a=r.elements;return typeof a=="string"?a.split(" "):a}function m(a){var b=i[a[g]];return b||(b={},h++,a[g]=h,i[h]=b),b}function n(a,c,f){c||(c=b);if(j)return c.createElement(a);f||(f=m(c));var g;return f.cache[a]?g=f.cache[a].cloneNode():e.test(a)?g=(f.cache[a]=f.createElem(a)).cloneNode():g=f.createElem(a),g.canHaveChildren&&!d.test(a)?f.frag.appendChild(g):g}function o(a,c){a||(a=b);if(j)return a.createDocumentFragment();c=c||m(a);var d=c.frag.cloneNode(),e=0,f=l(),g=f.length;for(;e<g;e++)d.createElement(f[e]);return d}function p(a,b){b.cache||(b.cache={},b.createElem=a.createElement,b.createFrag=a.createDocumentFragment,b.frag=b.createFrag()),a.createElement=function(c){return r.shivMethods?n(c,a,b):b.createElem(c)},a.createDocumentFragment=Function("h,f","return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&("+l().join().replace(/\w+/g,function(a){return b.createElem(a),b.frag.createElement(a),'c("'+a+'")'})+");return n}")(r,b.frag)}function q(a){a||(a=b);var c=m(a);return r.shivCSS&&!f&&!c.hasCSS&&(c.hasCSS=!!k(a,"article,aside,figcaption,figure,footer,header,hgroup,nav,section{display:block}mark{background:#FF0;color:#000}")),j||p(a,c),a}var c=a.html5||{},d=/^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i,e=/^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i,f,g="_html5shiv",h=0,i={},j;(function(){try{var a=b.createElement("a");a.innerHTML="<xyz></xyz>",f="hidden"in a,j=a.childNodes.length==1||function(){b.createElement("a");var a=b.createDocumentFragment();return typeof a.cloneNode=="undefined"||typeof a.createDocumentFragment=="undefined"||typeof a.createElement=="undefined"}()}catch(c){f=!0,j=!0}})();var r={elements:c.elements||"abbr article aside audio bdi canvas data datalist details figcaption figure footer header hgroup mark meter nav output progress section summary time video",shivCSS:c.shivCSS!==!1,supportsUnknownElements:j,shivMethods:c.shivMethods!==!1,type:"default",shivDocument:q,createElement:n,createDocumentFragment:o};a.html5=r,q(b)}(this,b),e._version=d,e._prefixes=m,e.mq=v,e.testStyles=u,g.className=g.className.replace(/(^|\s)no-js(\s|$)/,"$1$2")+(f?" js "+r.join(" "):""),e}(this,this.document),function(a,b,c){function d(a){return"[object Function]"==o.call(a)}function e(a){return"string"==typeof a}function f(){}function g(a){return!a||"loaded"==a||"complete"==a||"uninitialized"==a}function h(){var a=p.shift();q=1,a?a.t?m(function(){("c"==a.t?B.injectCss:B.injectJs)(a.s,0,a.a,a.x,a.e,1)},0):(a(),h()):q=0}function i(a,c,d,e,f,i,j){function k(b){if(!o&&g(l.readyState)&&(u.r=o=1,!q&&h(),l.onload=l.onreadystatechange=null,b)){"img"!=a&&m(function(){t.removeChild(l)},50);for(var d in y[c])y[c].hasOwnProperty(d)&&y[c][d].onload()}}var j=j||B.errorTimeout,l=b.createElement(a),o=0,r=0,u={t:d,s:c,e:f,a:i,x:j};1===y[c]&&(r=1,y[c]=[]),"object"==a?l.data=c:(l.src=c,l.type=a),l.width=l.height="0",l.onerror=l.onload=l.onreadystatechange=function(){k.call(this,r)},p.splice(e,0,u),"img"!=a&&(r||2===y[c]?(t.insertBefore(l,s?null:n),m(k,j)):y[c].push(l))}function j(a,b,c,d,f){return q=0,b=b||"j",e(a)?i("c"==b?v:u,a,b,this.i++,c,d,f):(p.splice(this.i++,0,a),1==p.length&&h()),this}function k(){var a=B;return a.loader={load:j,i:0},a}var l=b.documentElement,m=a.setTimeout,n=b.getElementsByTagName("script")[0],o={}.toString,p=[],q=0,r="MozAppearance"in l.style,s=r&&!!b.createRange().compareNode,t=s?l:n.parentNode,l=a.opera&&"[object Opera]"==o.call(a.opera),l=!!b.attachEvent&&!l,u=r?"object":l?"script":"img",v=l?"script":u,w=Array.isArray||function(a){return"[object Array]"==o.call(a)},x=[],y={},z={timeout:function(a,b){return b.length&&(a.timeout=b[0]),a}},A,B;B=function(a){function b(a){var a=a.split("!"),b=x.length,c=a.pop(),d=a.length,c={url:c,origUrl:c,prefixes:a},e,f,g;for(f=0;f<d;f++)g=a[f].split("="),(e=z[g.shift()])&&(c=e(c,g));for(f=0;f<b;f++)c=x[f](c);return c}function g(a,e,f,g,h){var i=b(a),j=i.autoCallback;i.url.split(".").pop().split("?").shift(),i.bypass||(e&&(e=d(e)?e:e[a]||e[g]||e[a.split("/").pop().split("?")[0]]),i.instead?i.instead(a,e,f,g,h):(y[i.url]?i.noexec=!0:y[i.url]=1,f.load(i.url,i.forceCSS||!i.forceJS&&"css"==i.url.split(".").pop().split("?").shift()?"c":c,i.noexec,i.attrs,i.timeout),(d(e)||d(j))&&f.load(function(){k(),e&&e(i.origUrl,h,g),j&&j(i.origUrl,h,g),y[i.url]=2})))}function h(a,b){function c(a,c){if(a){if(e(a))c||(j=function(){var a=[].slice.call(arguments);k.apply(this,a),l()}),g(a,j,b,0,h);else if(Object(a)===a)for(n in m=function(){var b=0,c;for(c in a)a.hasOwnProperty(c)&&b++;return b}(),a)a.hasOwnProperty(n)&&(!c&&!--m&&(d(j)?j=function(){var a=[].slice.call(arguments);k.apply(this,a),l()}:j[n]=function(a){return function(){var b=[].slice.call(arguments);a&&a.apply(this,b),l()}}(k[n])),g(a[n],j,b,n,h))}else!c&&l()}var h=!!a.test,i=a.load||a.both,j=a.callback||f,k=j,l=a.complete||f,m,n;c(h?a.yep:a.nope,!!i),i&&c(i)}var i,j,l=this.yepnope.loader;if(e(a))g(a,0,l,0);else if(w(a))for(i=0;i<a.length;i++)j=a[i],e(j)?g(j,0,l,0):w(j)?B(j):Object(j)===j&&h(j,l);else Object(a)===a&&h(a,l)},B.addPrefix=function(a,b){z[a]=b},B.addFilter=function(a){x.push(a)},B.errorTimeout=1e4,null==b.readyState&&b.addEventListener&&(b.readyState="loading",b.addEventListener("DOMContentLoaded",A=function(){b.removeEventListener("DOMContentLoaded",A,0),b.readyState="complete"},0)),a.yepnope=k(),a.yepnope.executeStack=h,a.yepnope.injectJs=function(a,c,d,e,i,j){var k=b.createElement("script"),l,o,e=e||B.errorTimeout;k.src=a;for(o in d)k.setAttribute(o,d[o]);c=j?h:c||f,k.onreadystatechange=k.onload=function(){!l&&g(k.readyState)&&(l=1,c(),k.onload=k.onreadystatechange=null)},m(function(){l||(l=1,c(1))},e),i?k.onload():n.parentNode.insertBefore(k,n)},a.yepnope.injectCss=function(a,c,d,e,g,i){var e=b.createElement("link"),j,c=i?h:c||f;e.href=a,e.rel="stylesheet",e.type="text/css";for(j in d)e.setAttribute(j,d[j]);g||(n.parentNode.insertBefore(e,n),m(c,0))}}(this,document),Modernizr.load=function(){yepnope.apply(window,[].slice.call(arguments,0))},Modernizr.addTest("ie8compat",function(){return!window.addEventListener&&document.documentMode&&document.documentMode===7});
}else{ie8 = false;}
//移动百度
function bdad(id)
    {
    return '<scr'+'ipt type="text/javascript">var cpro_id = "' + id + '";</scr'+'ipt><scr'+'ipt type="text/javascript" src="https://cpro.baidustatic.com/cpro/ui/cm.js"></scr'+'ipt>';
    }

function chzg(){
    var symbol="";
    var code = document.getElementById("code").value;
    if(code.substring(0,2)=="00" || code.substring(0,2)=="30"){
        symbol = "SZ"+code+"/";
    }else if(code.substring(0,2)=="60"){
        symbol = "SH"+code+"/"; 
    }
    document.getElementById("zgform").action="http://hq.gucheng.com/"+symbol;
    return true;
}
function gg_f1(){
    if (!isMobile){
    //document.write('<div class="duilian1"><a href="http://gagd.gucheng.com/?u=http://www.369wan.com/html/goldHunters33.html?qqid=1" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/duilian.gif"></a></div>');
    }
}
function gg_f2f3f4(){
    if (!isMobile){
    document.write('<div class="duilian2">');
//  document.write('<a href="http://gagd.gucheng.com/?u=http://www.369wan.com/html/goldHunters33.html?qqid=1" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/duilianbao.gif?13"></a>');
    //document.write('<a href="https://roll.gucheng.com/201806/3444088.shtml" target="_blank"><img src="https://www.gucheng.com/2016/adimg/indl1.jpg"></a>');
    document.write('<a href="https://stock.gucheng.com/gupiaozhishi/" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/duiliangushi.gif?145" class="duilianxia"></a>');
    //document.write('<a href="http://qm.qq.com/cgi-bin/qm/qr?k=0eNFZo5eEuKqBfmcEf_D2i8gp1PcfANm" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/timg.gif?143" class="duilianxia"></a>');
    document.write('</div>');
    }
}

function gg_t6t7(){
        if (isMobile == true)
            {
    document.write('<li><a href="https://stock.gucheng.com/">股票</a></li><li class="wap_none"><a href="https://stock.gucheng.com/dapanfenxi/">大盘分析</a></li><li class="wap_none"><a href="https://ipo.gucheng.com/">新股</a></li><li><a href="https://gold.gucheng.com/">黄金</a></li><li><a href="https://consumer.gucheng.com/">消费</a></li><li><a href="https://money.gucheng.com/">理财</a></li><li><a href="https://stock.gucheng.com/gupiaozhishi/">知识</a></li>');
        }
        else
            {
    document.write('<tt class="ttad"><a class="ad_look" href="https://hq.gucheng.com/Leida.html" target="_blank">广告：你离万元现金，只差一次抽奖！<em></em></a></tt>');
    //document.write('<tt class="ttad"><a class="ad_look" href="https://www.q8885c.com" target="_blank">广告：<font color="red">炒股开户,1万变10万,实盘交易</font><em></em></a></tt>');
    //document.write('<tt class="ttad"><a class="ad_look" href="http://gagd.gucheng.com/?u=https://www.jikaicai.com/home?from=ch18060504&src=default" target="_blank">广告：恭喜91年小哥30元刮100000元<em></em></a></tt>');
    document.write('<tt class="ttad"><a class="ad_look" href="https://hq.gucheng.com/Leida.html" target="_blank">广告：买入这几只股，将涨成摇钱树<em></em></a></tt>');
    }
}
function gg_rxxl1(){
    if (!isMobile){
//  document.write('<a href="http://gagd.gucheng.com/?u=http://www.369wan.com/html/goldHunters33.html?qqid=1" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/90x62_01.jpg"/><h3>东川30岁漂亮女股民7年只做一支股，技巧给力</h3><u></u></a>');
    }
}
//index中间_顶部
function mid_top_index()
    {   
        if (isMobile == true)
            {}
        else
            {
                document.write('<div class="pc_top_ad1">');
                document.write('<a href="https://hq.gucheng.com/Leida.html" target="_blank" style="height:60px"><img src="https://www.gucheng.com/2016/ggimg/hq_g_01.png" style="height:60px"/></a>');//m1
                //document.write('<a href="http://893339.com" target="_blank" style="height:60px"><img src="https://www.gucheng.com/2016/adimg/inhf5.jpg" style="height:60px"/></a>');//m1
                document.write('<tt><span>广告</span>');
                //document.write('<a href="https://www.gucheng.com/special/sbzlc/" target="_blank">上班族怎么理财？</a>');//t1
                document.write('<a href="http://www.yzskj.com/" target="_blank">权威股票配资官方</a>');//t1
                //document.write('<a href="https://www.gucheng.com/special/lc_lccp/" target="_blank">理财产品最新排行</a>');//t2
                document.write('<a href="https://pz88.com/register?recommendCode=1062" target="_blank">正规股票配资平台</a>');//t2
                //document.write('<a href="https://hq.gucheng.com/Leida.html" target="_blank">精选８股逆势大涨</a>');//t3
                document.write('<a href="https://www.yipz6.com/register?recommendCode=1018" target="_blank">注册送3万操盘金</a>');//t3
                //document.write('<a href="https://www.gucheng.com/tools/calc_stock/calc_bbmc.html" target="_blank">股神专用限时免费</a>');//t4
                document.write('<a href="http://d10.qh205.com/" target="_blank">期货小资金可交易</a>');//t4
                //document.write('<a href="https://hq.gucheng.com/Leida.html" target="_blank">这３股谁买谁赚钱</a>');//t5
                document.write('<a href="http://www.9cgp.com/" target="_blank">赤盈APP送88元</a>');//t5
                document.write('</tt></div>');
            }
    }


//index中间_中间
function mid_mid_index()
    {   
        if (isMobile == true)
            {
            //document.write('<div class="liaogu_wx"><a target="_blank" href="https://www.gucheng.com/ceshi/liaogu.html"><img src="/2016/wx_liaogu_img.jpg"><h2>聊股</h2><p>名师免费教你涨停战法、买卖点技巧...</p></a></div>');
            }
        else
            {
            }
    }
function xxl_01(){
        if (isMobile == true)
            {
//          if(!BDSearch){
//    document.write('<a class="xxl_img_list" target="_blank" href="#"><img src="https://www.gucheng.com/2016/adimg/aaa.jpg" /><i class="tag_8"></i></a>');
//          }
        }
}
function gg_r1()
    {   
        if (isMobile == true)
            {
            //document.write('<div class="ggwenzhang_2"><div id="lgpic1"></div></div>');
            //document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
            /////document.write('<div class="wenzhangnt2">' + fgl("dynaznnue") + '</div>'); //4图二行二图u2872240
            }
        else
            {

                    (function() {
                        var s = "_" + Math.random().toString(36).slice(2);
                        document.write('<div id="' + s + '"></div>');
                        (window.slotbydup=window.slotbydup || []).push({
                            id: '4433215',
                            container: s,
                            size: '300,250',
                            display: 'inlay-fix'
                        });
                    })();
                    document.write('<scr'+'ipt src="//dup.baidustatic.com/js/os.js"></scr'+'ipt>');

            }
    }
function gg_r2()
    {   
        if (isMobile == true)
            {
            //document.write('<div class="ggwenzhang_2"><div id="lgpic1"></div></div>');
            //document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
            /////document.write('<div class="wenzhangnt2">' + fgl("dynaznnue") + '</div>'); //4图二行二图u2872240
            }
        else
            {

                    (function() {
                        var s = "_" + Math.random().toString(36).slice(2);
                        document.write('<div id="' + s + '"></div>');
                        (window.slotbydup=window.slotbydup || []).push({
                            id: '5589508',
                            container: s,
                            size: '300,250',
                            display: 'inlay-fix'
                        });
                    })();
                    document.write('<scr'+'ipt src="//dup.baidustatic.com/js/os.js"></scr'+'ipt>');

            }
    }
function gg_r4()
    {   
        if (isMobile == true)
            {
            //document.write('<div class="ggwenzhang_2"><div id="lgpic1"></div></div>');
            //document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
            /////document.write('<div class="wenzhangnt2">' + fgl("dynaznnue") + '</div>'); //4图二行二图u2872240
            }
        else
            {

                    (function() {
                        var s = "_" + Math.random().toString(36).slice(2);
                        document.write('<div id="' + s + '"></div>');
                        (window.slotbydup=window.slotbydup || []).push({
                            id: '6098489',
                            container: s,
                            size: '300,250',
                            display: 'inlay-fix'
                        });
                    })();
                    document.write('<scr'+'ipt src="//dup.baidustatic.com/js/os.js"></scr'+'ipt>');

            }
    }
function gg_b1()
    {
    if (!isMobile){
        document.write('<a href="https://hq.gucheng.com/Leida.html" target="_blank">股民福利<div class="tips1"><img src="https://www.gucheng.com/2016/ad/2016/ad2.gif"><span class="bot1"></span><span class="top1"></span>涨停股票池免费公开</div></a>');
        //document.write('<a href="http://gagd.gucheng.com/?u=https://www.jikaicai.com/home?from=ch18060504&src=default" target="_blank">彩票<div class="tips1"><img src="https://www.gucheng.com/2016/ad/2016/ad2.gif"><span class="bot1"></span><span class="top1"></span>返奖率高达65%</div></a>');
    }
}
function gg_b2()
    {
    if (!isMobile){
        document.write('<a href="http://m.dgzq.com.cn/kh/m/open/index.html?recommand_id=000670" target="_blank">股票开户<div class="tips2"><img src="https://www.gucheng.com/2016/ad/2016/ad2.gif"><span class="bot2"></span><span class="top2"></span>成功开户送iPhone X</div></a>');
    }
}
function right_mid_index2()
    {   
        if (isMobile == true)
            {}
        else
            {
            document.write('<aside class="gcw_r_ad_pc2"><a href="https://www.gucheng.com/special/gp_gprm/" target="_blank"><img src="https://www.gucheng.com/2016/ad/2016/300_600.jpg" /></a></aside>');
            
            //document.write('<aside class="gcw_r_ad_pc2">');
            //      (function() {
            //          var s = "_" + Math.random().toString(36).slice(2);
            //          document.write('<div id="' + s + '"></div>');
            //          (window.slotbydup=window.slotbydup || []).push({
            //              id: '5578307',
            //              container: s,
            //              size: '300,600',
            //              display: 'inlay-fix'
            //          });
            //      })();
            //      document.write('<scr'+'ipt src="https://dup.baidustatic.com/js/os.js"></scr'+'ipt>');
            //document.write('</aside>');
            }
    }

//index右侧_底部
function right_bottom_index()
    {   
        if (isMobile == true)
            {
        //document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
        //document.write('<div class="right_list"><a class="more_l" href="https://www.gucheng.com/special/">点击查看更多热点资讯</a></div>');
        /////document.write('<div class="search_wap">' + fgl("ccdi75xsrn") + '</div>'); //搜索推荐 u3012076
        }
        else
            {
            document.write('<div class="right_img"><img src="/2016/gcw_weixin.gif" /></div>');


//hq 开始
        //ajax
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
        






//hq 结束
            }
    }
function left_list_tongyi() {
    if (isMobile == true) {
        //document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
        /////document.write('<div class="wenzhangnt2">' + fgl("dynaznnue") + '</div>'); //4图二行二图u2872240
        } else  {
        //document.write(pclist("u2540483", "760", "160", "#f1f1f1", "173", "130"));
    }
}
//列表信息流
function gg_xxl_m() {
    if (isMobile == true) {
    /////document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
    /////document.write('<div class="list_xxl">' + fgl("xshuatatk") + '</div>'); //信息流u2897973
    } else  {
        //https://www.gucheng.com/2016/ad/2016/ind_m2_1.jpg
        var articleList = [
            //'<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/niugu_2.gif"/><h2>散户注意了：牛股已出，这三只股即将大涨！</h2><p>炒股老师微信号对外开放100名，免费送潜力好股，20年股票操盘大师交流炒股心得，分享抓好股技巧，买卖点指导，预测个股行情&hellip;</p><u></u></a>',
            '<a target="_blank" href="http://www.xlpz66.com/#gucheng" class="pcxxl"><img src="https://www.gucheng.com/2016/adimg/niugu_2.png"/><h2>牛市来袭，配资找牛弘，注册即送3000现金</h2><p>你炒股，我出钱，1-0倍杠杆，1-12月操盘，利息低至0.6%，实名注册即送666管理费，实盘交易，单票满仓，即日到账，快快行动吧！</p><u></u></a>',
            '<a target="_blank" href="http://dzpz6.com/" class="pcxxl"><img src="https://www.gucheng.com/2016/adimg/dzpz8_xxl.jpg"/><h2>鼎泽股票配资：注册送8888操盘金、盈利全归您！</h2><p>你炒股，我出钱，呼朋唤友拿佣金，最高还可获得管理费百分之五十。首次配资送、注册还送你8888元操盘基金。而且盈利全部归你！</p><u></u></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="listad"><img src="https://www.gucheng.com/2016/ad/2016/niugu_0.gif" /></a><a target="_blank" href="https://ccsupei.com/" class="pcxxl"><img src="https://www.gucheng.com/2016/adimg/chucai.jpg"/><h2>出彩速配：国内最大配资平台，注册送操盘金+管理费</h2><p>您炒股，我出钱，最高可获得12倍配资。注册可获得15888操盘金+1888管理费，盈利全归您，券商账号，全程实盘交易，权威认证大平台更放心&hellip;</p><u></u></a>',//<a target="_blank" href="http://pz1997.com/" class="pcxxl"><img src="https://www.gucheng.com/2016/adimg/hf78.png"/><h2>牛市来袭，配资找恒丰，注册即送8888体验金</h2><p>你炒股，我出钱，1-0倍杠杆，1-12月操盘，利息低至0.6%，实名注册即送8888操盘体验金，单票满仓，秒提现快快行动吧&hellip;</p><u></u></a>
//'<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/niugu_2.gif"/><h2>散户注意了：牛股已出，这三只股即将大涨！</h2><p>炒股老师微信号对外开放100名，免费送潜力好股，20年股票操盘大师交流炒股心得，分享抓好股技巧，买卖点指导，预测个股行情&hellip;</p><u></u></a>',
//'<a target="_blank" href="http://www.918466.com/" class="listad"><img src="https://www.gucheng.com/2016/adimg/ppzzz_0.jpg" /></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="listad"><img src="https://www.gucheng.com/2016/ad/2016/niugu.gif" /></a>',

            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/sucai1.jpg"/><h2>漂亮小姐姐炒股不亏之谜，今日微信公开操作技巧！</h2><p>每一份成绩都是用时间熬出来的。今天我抽空写出这篇文章说出自己的亲身经历，希望对大家带来帮助！让你在股市中少走很多弯路&hellip;</p><u></u></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="listad"><img src="https://www.gucheng.com/2016/ad/2016/646_90_2.jpg" /></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/90x62_02.jpg"/><h2>为什么手中持有的股票总是亏？原因竟是...</h2><p>对于很多股民来说，他们的炒股都是经历过很多的心血去实践和学习的，相信很多朋友都会觉得在股市赚钱其实并不容易&hellip;</p><u></u></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="listad"><img src="https://www.gucheng.com/2016/ad/2016/niugu_0.gif" /></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/90x62_03.jpg"/><h2>偷偷告诉你炒股30天速成战法，成为10%成功的那个</h2><p>两年悟盘感，终有小成，曾帮助无数相信我的股民扭亏为盈。总结出一套选择牛股成功率极高，能提捕捉在低位起涨的大牛股&hellip;</p><u></u></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="pcxxl"><img src="https://www.gucheng.com/2016/ad/2016/90x62_04.jpg"/><h2>浅谈我的炒股经历:一个普通人靠炒股赚到100万</h2><p>我叫张扬，今年29岁。我也是半年前才开始一直赚钱的，大家可能会感到不可思议。其实我和大家一样，在股海里面有各种辛酸历程&hellip;</p><u></u></a>',
            '<a target="_blank" href="https://hq.gucheng.com/Leida.html" class="listad"><img src="https://www.gucheng.com/2016/ad/2016/646_90_3.jpg" /></a>'
        ]
        var gg_xxl_m = document.getElementsByName('gg_xxl_m');
        //console.log(gg_xxl_m.length == articleList.length)
        if (gg_xxl_m.length == articleList.length) {
            for (var i = 0; i < gg_xxl_m.length; i++) {
                gg_xxl_m[i].innerHTML = articleList[i];
            }
        }
    
    }
}


//黄金对联
function gold_dulian(){
    if (isMobile == true)
    {}
    else
    {
        document.writeln("<div>");

        //document.writeln('<div class="fixed_img"><a href="https://dfpz88.com/" target="_blank"><img src="https://www.gucheng.com/2016/adimg/nydll2.png"></a><span onclick="this.parentNode.style.display='+'\'none\''+'">关闭</span></div>');
        //document.writeln("<div class=\'fixed_img\'><a href=\'https://www.981052.com/Base/reg/code/104958\' target=\'_blank\'><img src=\'https://www.gucheng.com/2016/ggimg/120x270.gif\' alt=\'\' height=270></a><span>关闭</span></div>");
        //document.writeln("<div class=\'fixed_img\'><a href=\'https://5678765.vip/registerMutil/link_18539.do\' target=\'_blank\'><img src=\'https://www.gucheng.com/2016/ggimg/hj120x120.gif\' alt=\'\' width=120 height=120></a><span>关闭</span></div>");
        //document.writeln("<div class=\'fixed_img\'><a href=\'https://5678765.vip/registerMutil/link_18539.do\' target=\'_blank\'><img src=\'https://www.gucheng.com/2016/ggimg/hj120x120.gif\' alt=\'\' width=120 height=120></a><span>关闭</span></div>");
        document.writeln('<div class="fixed_img"></div>');
        //document.writeln('<div class="fixed_img"><a href="http://www.gspzwang.com/" target="_blank"><img src="https://www.gucheng.com/2016/adimg/indl1.png"></a><span onclick="this.parentNode.style.display='+'\'none\''+'">关闭</span></div>');
        document.writeln('<div class="fixed_img"><a href="https://www.993261.com/Register/a1521daf-5ba1-416c-911d-fa1547653a26" target="_blank"><img src="https://www.gucheng.com/2016/adimg/indlr-2.jpg"></a><span onclick="this.parentNode.style.display='+'\'none\''+'">关闭</span></div>');
        //document.writeln('<div class="fixed_img"><span></span></div>');
        //document.writeln("<div class=\'fixed_img\'><a href=\'http://9495s.com/\' target='_blank'><img src=\'http://www.gucheng.com/2016/adimg/hjxl.gif\' ></a><span>关闭</span></div>");
        //document.writeln('<div class="fixed_img"><span></span></div>');
        //document.writeln("<div class=\'fixed_img\'><a href=\'#\'><img src=\'http://www.gucheng.com/2015/ggimg/0f000KHjSOLPSjlzU8I33s.gif\' alt=\'\'></a><span>关闭</span></div>");
        document.writeln("</div>");
    }
}
gold_dulian();

//版权
function footer()
{
    if (isMobile == true)
    {
    var m=0;
    var m_n = document.getElementById("m_n");
    
        if(window.attachEvent)
        {
             m_n.attachEvent('click', function (){if(m%2==0){document.getElementById("nav").style.display="block";}else{document.getElementById("nav").style.display="none";}m++;});            
        }
        else
        {    
            m_n.addEventListener('click', function (){if(m%2==0){document.getElementById("nav").style.display="block";}else{document.getElementById("nav").style.display="none";}m++;});
        }
        
        //document.write('<scr'+'ipt type="text/javascript" src="/2016/weixin/liaogu.js"></scr'+'ipt>');//liaogu广告
        

if (u.indexOf('baidu') > -1){}else{
//链接加tag
var addList=['.news_list a','.right_list a'] 
    for(var i=addList.length;i>0;i--){
        var els=document.querySelectorAll(addList[i-1])
        for(var j=els.length;j>0;j--){
            var eI=document.createElement('i');

            eI.className='tag_'+Math.round(Math.random()*6+1);
            els[j-1].appendChild(eI)
        }
    }
}


        document.write('<span><a href="https://www.gucheng.com/about/gucheng.shtml" rel="nofollow" target="_blank">关于股城</a> | <a href="https://www.gucheng.com/about/lianxi.shtml" rel="nofollow" target="_blank">联系方式</a></span><i><a href="https://v.pinpaibao.com.cn/cert/site/?site=finance.gucheng.com" target="_blank"><img src="https://www.gucheng.com/2016/hz/16.png"></a><a href="http://si.trustutn.org/info?sn=148130918000289053266" target="_blank"><img src="https://www.gucheng.com/2016/hz/14.png"></a></i>');
        //document.write('<a target="_blank" class="search_sm" href="https://yz.m.sm.cn/s?q=site%3Agucheng.com&by=submit&from=wm731088">&#xe6df;</a>');
    }
    else
    {


    document.write('<span>版权：广州齐盈网络科技有限公司</span><a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010402000746" rel="nofollow"><img src="https://www.gucheng.com/2016/beian.png">粤公网安备44010402000746号</a> | <a href="http://www.gucheng.com/icp.html" rel="nofollow" target="_blank">粤B2-20080440号</a> | <a href="http://www.miitbeian.gov.cn/" rel="nofollow" target="_blank">粤ICP备13056080号</a> | 粤网文[2016]0929-149号 | <a href="http://www.gucheng.com/about/gucheng.shtml" rel="nofollow" target="_blank">关于股城</a> | <a href="http://www.gucheng.com/about/gg.shtml" rel="nofollow" target="_blank">广告服务</a> | <a href="http://www.gucheng.com/about/lianxi.shtml" rel="nofollow" target="_blank">联系方式</a> | ');


        //  问答右侧滚动
        var scrollBox = document.getElementById('ask_scroll_info');
        var scrollDiv = scrollBox.getElementsByTagName('div')[0];
        var scrollA = scrollDiv.getElementsByTagName('a')
        var hiddenHeight = scrollDiv.offsetHeight - 540;        //隐藏高度
        scrollDiv.style.transition = 'margin .5s';
        var marginTop = 0;
        var askScrollInterval = setInterval(function () {
            marginTop = marginTop - 90;
            scrollDiv.style.marginTop = marginTop + 'px';
            if (marginTop <= -hiddenHeight) {
                clearInterval(askScrollInterval);
            }
        },3000)
    
    }
}

//百度统计
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?9636c8f382a28ba02485f6d78a23de71";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();




function random(start,range) {
    return parseInt(Math.random() * range + start);
}
//清除cookie    
function clearCookie(name) {    
    setCookie(name, "", -1);    
}
//设置cookie  
function setCookie(cname, cvalue, exdays) {  
    var d = new Date();  
    d.setTime(d.getTime() + (exdays*24*60*60*1000));  
    var expires = "expires="+d.toUTCString();  
    document.cookie = cname + "=" + cvalue + "; " + expires;  
}  
//获取cookie  
function getCookie(cname) {  
    var name = cname + "=";  
    var ca = document.cookie.split(';');  
    for(var i=0; i<ca.length; i++) {  
        var c = ca[i];  
        while (c.charAt(0)==' ') c = c.substring(1);  
        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);  
    }  
    return "";  
}
function checkCookie(name) {
    if (getCookie("asi") == ""){
        var asi = random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418)+','+random(12200,96418);
        setCookie("asi", asi, 2);
    }
}  
checkCookie();
function asi() {
    var asi_arr = getCookie('asi').split(',');
    var asi = document.getElementsByClassName('right_ask_list')[0].getElementsByTagName('a');
    for (var i = 0; i < asi.length; i++) {
        asi[i].innerHTML = '<span><i>' + asi_arr[i] + '</i>觉得有用</span>' + asi[i].innerHTML;
    }
    setInterval(function() {
        setCookie('asi',asi_arr.join(','),2);
    },random(5000,5000))
}