<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/sendCard/";
	String filePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/web/images/" + request.getAttribute("enterID")
			+ "/sendCard/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html><html> <head> <title>关注微信号<s:property value="enterName"/>手册</title><meta http-equiv=Content-Type content="text/html;charset=utf-8"><meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0"><meta name="apple-mobile-web-app-capable" content="yes"><meta name="apple-mobile-web-app-status-bar-style" content="black"><meta name="format-detection" content="telephone=no"> <link rel="stylesheet" type="text/css" href="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/style/client-page1a1cdb.css"/>    <script>
  document.domain = "qq.com";
var _wxao = window._wxao || {};

_wxao.appid = "wx1bc509d4d039b25a";
_wxao.version = "1.0.0";
_wxao.begin = (+new Date());

(function() {
var _onBridgeReady = function(){_wxao.jsbReady=true;};
if(document.addEventListener){
document.addEventListener('WeixinJSBridgeReady', _onBridgeReady, false);
} else if(document.attachEvent){
document.attachEvent('WeixinJSBridgeReady', _onBridgeReady); 
document.attachEvent('onWeixinJSBridgeReady', _onBridgeReady);
}
var wxa = document.createElement('script'); wxa.type = 'text/javascript'; wxa.async = true, version = _wxao.version||"1.0";
wxa.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/wxa/wxa-' + version + '.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(wxa, s);
})();
    </script><style>  #nickname{overflow: hidden;white-space: nowrap;text-overflow: ellipsis;max-width: 90%;  }  ol,ul{    list-style-position:inside;      }</style>    <style>  #activity-detail .page-content .text{font-size:16px;}</style></head> <body id="activity-detail">   <div class="page-bizinfo"><div class="header"><h1 id="activity-name">关注微信号【<s:property value="enterName"/>】手册</h1><p class="activity-info"><span id="post-date" class="activity-meta no-extra">2013-12-20</span>                    <a href="javascript:;" id="post-user" class="activity-meta"><span class="text-ellipsis"><s:property value="enterName"/></span><i class="icon_link_arrow"></i></a></p></div></div><div class="page-content"><div class="media" id="media"><img src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/big_loading19d82d.gif" onerror="this.parentNode.removeChild(this)" data-src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YwDJuz3JLOICYPZb3SeDI4lDicBJ2hFQeh82bK3SR3Iqv7DrCOfUEibzg/0" /></div><div class="text"><p style="text-align: left; "><span style="color: rgb(79, 97, 40); background-color: rgb(235, 241, 221); "><strong>Step1.在通讯录中点击订阅号</strong></span></p><p style="text-align: left; "><span style="color: rgb(79, 97, 40); background-color: rgb(235, 241, 221); "><strong><br  /></strong></span></p><p style="text-align: left; "><img src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YfVgZIb47Vajy4RMr6ic4t5RWxOQ35cFS8BHkHtPdpzUStGGPcqWvGCQ/0" style=""  /></p><p style="text-align: left; "><br  /></p><p style="text-align: left; "><span style="background-color: rgb(235, 241, 221); "><strong style="color: rgb(79, 97, 40); white-space: normal; ">Step2.在订阅号中点击右上方的“+”</strong></span></p><p style="text-align: left; "><span style="background-color: rgb(235, 241, 221); "><strong style="color: rgb(79, 97, 40); white-space: normal; "><br  /></strong></span></p><p style="text-align: left; "><img src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YcROF51vG3aG7pNnACb7kF2315Lr0lic1PEb62miaYbRGZHGibfjLFJjSw/0" style=""  /></p><p style="text-align: left; "><br  /></p><p style="text-align: left; "><span style="background-color: rgb(235, 241, 221); "><strong style="white-space: normal; color: rgb(79, 97, 40); ">Step3.在查找公众号中输入小有微信号“<s:property value="enterName"/>”</strong></span></p><p style="text-align: left; "><strong style="white-space: normal; color: rgb(79, 97, 40); "><br  /></strong></p><p style="text-align: left; "><img src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5Yvl831VrMtLB7Onrk16FjKDNib9EKMnbo0t3fjGI4ngkJahja8ic8AZqw/0" style=""  /></p><p style="text-align: left; "><br  /></p><p style="text-align: left; "><span style="background-color: rgb(235, 241, 221); "><strong style="white-space: normal; color: rgb(79, 97, 40); ">Step4.输入小有微信号“<s:property value="enterName"/>”后点击“<s:property value="enterName"/>”</strong></span></p><p style="text-align: left; "><strong style="white-space: normal; color: rgb(79, 97, 40); "><br  /></strong></p><p style="text-align: left; "><img src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YL5KDCTU2srS9UMKP0BVpFcLoFE2Lj4PP2PVRLnAvB7xVichQiaBCibzDw/0" style=""  /></p><p style="text-align: left; "><br  /></p><p style="text-align: left; "><strong style="white-space: normal; color: rgb(79, 97, 40); ">Step5.点击“<s:property value="enterName"/>”下方关注，关注成功w</strong></p><p style="text-align: left; "><strong style="white-space: normal; color: rgb(79, 97, 40); "><br  /></strong></p><p style="text-align: left; "><img src="http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YdWwKbd7bb3wRF3BvVlwLc86Q4LTwTwL8kg8H8iaAUqmQgATVcyMmrkQ/0" style=""  /></p><p><br  /></p><p style="white-space: normal; text-align: left; "><span style="background-color: rgb(79, 97, 40); color: rgb(255, 255, 255); "><strong><br  /></strong></span></p><p style="white-space: normal; text-align: left; "><span style="background-color: rgb(79, 97, 40); color: rgb(255, 255, 255); "><strong>输入<span style="background-color: rgb(118, 146, 60); color: rgb(235, 241, 221); ">“0”</span>进入小有导航菜单，输入以下数字获取各类信息~</strong></span></p><p style="white-space: normal; text-align: left; "><strong><br  /></strong></p><p style="white-space: normal; text-align: left; "><span style="color: rgb(79, 97, 40); "><strong>1.娱乐新闻热点</strong></span></p><p style="white-space: normal; text-align: left; "><span style="color: rgb(118, 146, 60); "><strong>2.吃在济南</strong></span></p><p style="white-space: normal; text-align: left; "><span style="color: rgb(79, 97, 40); "><strong>3.小伙伴们去哪儿玩</strong></span></p><p style="white-space: normal; text-align: left; "><span style="color: rgb(118, 146, 60); "><strong>4.让我们走遍济南的角落</strong></span></p><p style="white-space: normal; text-align: left; "><span style="color: rgb(79, 97, 40); "><strong>5.济南天气预报小助手</strong></span></p><p style="white-space: normal; text-align: left; "><strong><br  /></strong></p><p style="white-space: normal; text-align: left; "><span style="background-color: rgb(79, 97, 40); color: rgb(255, 255, 255); "><strong>欢迎大家点击右上角的分享给朋友将小有推荐给大家哦2333</strong></span></p><p><br  /></p>注明：以上图片以【么都有】为例。</div><p class="page-toolbar"><a href="javascript:report_article();" class="page-imform">举报</a></p></div><script src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/jquery-1.8.3.min176ed4.js"></script><script src="http://res.wx.qq.com/mmbizwap/zh_CN/htmledition/js/wxm-core176ed4.js"></script><script id="txt-desc" type="txt/text">小有教大家如何关注微信号=w=</script><script id="txt-title" type="txt/text">关注微信号手册</script><script id="txt-sourceurl" type="txt/text"></script>    <script>
      function getStrFromTxtDom(selector){
        var url = jQuery('#txt-' + selector)
                  .html()                  
                  .replace(/&lt;/g, '<')
                  .replace(/&gt;/g, '>');
return jQuery.trim(url);
      }
    
  function report_article(){
  var url = getStrFromTxtDom('sourceurl');
  if (url == "")  url = location.href;
  var query = ['<s:property value="enterName"/>', location.href, getStrFromTxtDom('title'),url].join("|WXM|");
              location.href = '/mp/readtemplate?t=wxm-appmsg-inform&__biz=MjM5MDU2OTMyNA==&info=' + encodeURIComponent(query) + "#wechat_redirect";
  }

/*      (function(){
        var 
          _dom   = jQuery('.text'),
          _html0 = _dom.html();
          _em    = jQuery('<p></p>').html('a').css({display:'inline'}),
          _init  = function(){
            _em.appendTo(_dom);
            var 
              _html = _html0,
              _max  = Math.floor( _dom.width() / _em.width() ),
              _reg  = new RegExp('[a-z1-9]{' + _max + ',}', 'ig');
            _em.remove();

            _html = _html.replace(/>[^<]+</g,function(txt){
              return txt.replace(_reg, function(str){
                var _str = str, result = []
                while(_str.length > _max){
                  result.push(
                    _str.substr(0, _max)
                  );
                  _str = _str.substr(_max);
                }
                result.push(_str);
                return result.join('<br/>');
              });
            });

            _dom.html(_html);
            //console.log(_dom.html());
          };
        jQuery(window).on('resize', _init).trigger('resize');
        
      })();*/
      function getStrFromTxtDomAndDecode(selector){
          var selectorStr = getStrFromTxtDom(selector);
          if (selectorStr.indexOf("://") < 0)
              selectorStr = "http://" + selectorStr;
  return 'http://'+ window.location.host +'/mp/redirect?url=' + encodeURIComponent(selectorStr);
    }



function viewSource(){
/*
var UA = navigator.userAgent.toLowerCase();
var isIem = function(){
if(/IEMobile/i.test(UA)) return true;
else return false;
}
if(isIem()){
jQuery(".page-url-link:first").attr("href", getStrFromTxtDomAndDecode('sourceurl') );
return ;
}*/
jQuery.ajax({
url: '/mp/appmsg/show-ajax' + location.search, //location.href
          async:false,
type:'POST',
timeout :2000,
data :{url:getStrFromTxtDom('sourceurl')},
complete:function(){location.href = getStrFromTxtDomAndDecode('sourceurl');}
}); 
return false;
    };
          function report(link, fakeid, action_type){
            var parse_link = parseUrl(link);
            if(parse_link == null)
            {
              return ;
            }
            var query_obj = parseParams( parse_link['query_str'] );
            query_obj['action_type'] = action_type;
            query_obj['uin'] = fakeid;
            var report_url = '/mp/appmsg/show?' + jQuery.param( query_obj );
            jQuery.ajax({
              url: report_url,
              type: 'POST',
              timeout: 2000
            })
          };

          function share_scene(link, scene_type){
            var parse_link = parseUrl(link);
            if(parse_link == null)
            {
              return link;
            }
            var query_obj = parseParams( parse_link['query_str'] );
            query_obj['scene'] = scene_type;
            var share_url = 'http://' + parse_link['domain'] + parse_link['path'] + '?' + jQuery.param( query_obj ) + (parse_link['sharp'] ? parse_link['sharp'] : '');
            return share_url;
          };
          
      //report("http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MDU2OTMyNA==&appmsgid=10014187&itemidx=1&sign=e4c70de53781641c77808dd24ac19247#wechat_redirect",1);
      //console.log('share url %s', share_scene("http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MDU2OTMyNA==&appmsgid=10014187&itemidx=1&sign=e4c70de53781641c77808dd24ac19247#wechat_redirect", 1));
(function(){
        var onBridgeReady =  function () {
          var 
            appId  = '',
      imgUrl = "http://mmbiz.qpic.cn/mmbiz/2KfDL66VWyjW4y9edc7t2a5iaIicI2Oz5YwDJuz3JLOICYPZb3SeDI4lDicBJ2hFQeh82bK3SR3Iqv7DrCOfUEibzg/0",
      link   = "http://mp.weixin.qq.com/mp/appmsg/show?__biz=MjM5MDU2OTMyNA==&appmsgid=10014187&itemidx=1&sign=e4c70de53781641c77808dd24ac19247#wechat_redirect",
title  = htmlDecode("关注微信号手册"),
            desc   = htmlDecode("小有教大家如何关注微信号=w="),
            fakeid = "",
            desc = desc || link;

        if ("1" == "0"){
    WeixinJSBridge.call("hideOptionMenu");  
        }

          jQuery("#post-user").click(function(){
            WeixinJSBridge.invoke('profile',{'username':'gh_6c880e5b8d56','scene':'57'});
          })

// 发送给好友; 
          WeixinJSBridge.on('menu:share:appmessage', function(argv){
            
WeixinJSBridge.invoke('sendAppMessage',{
  "appid"      : appId,
  "img_url"    : imgUrl,
  "img_width"  : "640",
  "img_height" : "640",
  "link"       : share_scene(link, 1),
  "desc"       : desc,
  "title"      : title
                        }, function(res) {report(link, fakeid, 1);
                        });
});
// 分享到朋友圈;
          WeixinJSBridge.on('menu:share:timeline', function(argv){
            report(link, fakeid, 2);
WeixinJSBridge.invoke('shareTimeline',{
  "img_url"    : imgUrl,
  "img_width"  : "640",
  "img_height" : "640",
  "link"       : share_scene(link, 2),
  "desc"       : desc,
  "title"      : title
  }, function(res) {
                        });
            
});

// 分享到微博;
var weiboContent = '';
          WeixinJSBridge.on('menu:share:weibo', function(argv){
            
WeixinJSBridge.invoke('shareWeibo',{
  "content" : title + share_scene(link, 3),
  "url"     : share_scene(link, 3) 
  }, function(res) {report(link, fakeid, 3);
  });
});

// 分享到Facebook
  WeixinJSBridge.on('menu:share:facebook', function(argv){
  report(link, fakeid, 4);
  WeixinJSBridge.invoke('shareFB',{
  "img_url"    : imgUrl,
  "img_width"  : "640",
  "img_height" : "640",
  "link"       : share_scene(link, 4),
  "desc"       : desc,
  "title"      : title
  }, function(res) {} );
  });

// 隐藏右上角的选项菜单入口;
//WeixinJSBridge.call('hideOptionMenu');
};
        if(document.addEventListener){
          document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
        } else if(document.attachEvent){
          document.attachEvent('WeixinJSBridgeReady'   , onBridgeReady);
          document.attachEvent('onWeixinJSBridgeReady' , onBridgeReady);
        }
})();

(function(){

var cookie = {
get: function(name){
if( name=='' ){
return '';
        }
        var reg = new RegExp(name+'=([^;]*)');
        var res = document.cookie.match(reg);
        return (res && res[1]) || '';
    },
    set: function(name, value){
var now = new Date();
now.setDate(now.getDate() + 1);
        var exp = now.toGMTString();
        document.cookie = name + '=' + value + ';expires=' + exp;
        return true;
    }
};

var timeout = null;
var val = 0;
var url = location.search.substr(1);
var params = parseParams( url );
var biz = params['__biz'];
while( ~biz.search('=') ){
biz = biz.replace('=','#');
}
var key = biz + params['appmsgid'] + params['itemidx'];

// window.onload
jQuery(function(){
    var val = cookie.get(key);
    jQuery(window).scrollTop(val);
});

jQuery(window).bind('unload',function(){
    cookie.set(key,val);
});

jQuery(window).bind('scroll',function(){
clearTimeout(timeout);
timeout = setTimeout(function(){
val = jQuery(window).scrollTop();
},500);
});

})();

    function nbspDecode(str){
if(str == undefined )
{
  return "";
}
var nbsp ="&nbsp;";
var replaceFlag = "<nbsp>";
var matchList = str.match(/(&nbsp;){1,}/g);
if(matchList){
  var replacedStr = str.replace(/(&nbsp;){1,}/g,replaceFlag);

  for(var idx = 0 ; idx < matchList.length; idx ++){
    var tmpNbsp = matchList[idx];
    tmpNbsp = tmpNbsp.replace(nbsp, " ");
   replacedStr = replacedStr.replace(replaceFlag,tmpNbsp);
  }
  return replacedStr;               
}else{
 return str;
}
}

var title = $("#activity-name").html();
title = nbspDecode(title);
$("#activity-name").html(title);
//弹出框中图片的切换
(function() {
var imgs = jQuery('img'),
imgsSrc = [],
minWidth = 0;
imgs.each(function() {
var jqthis = jQuery(this),
src = jqthis.attr('data-src') || jqthis.attr('src');
if (jqthis.width() >= minWidth && src) {
imgsSrc.push(src);
jqthis.on('click', function() {
reviewImage(src);
});
}
});

function reviewImage(src) {
if (typeof window.WeixinJSBridge != 'undefined') {
WeixinJSBridge.invoke('imagePreview', {
'current' : src,
'urls' : imgsSrc
});
}
}
    })();

        // 图片延迟加载
        (function(){
            var timer  = null;
            var height = jQuery(window).height() + 40;
            var images = [];
            function detect(){
                var scrollTop = jQuery(window).scrollTop() - 20;
                jQuery.each(images, function(idx,img){
                    var offsetTop = img.el.offset().top;
                    if( !img.show && scrollTop < offsetTop+img.height && scrollTop+height > offsetTop ){
                        img.el.attr('src', img.src);
                        img.show = true;
                    }
                });
            }
            jQuery('img').each(function(){
                var img = $(this);
                if( img.attr('data-src') ){
                    images.push({
                        el     : img,
                        top    : img.offset().top,
                        src    : img.attr('data-src'),
                        height : img.height(),
                        show   : false
                    });
                }
            });
            jQuery(window).on('scroll', function(){
                clearTimeout(timer);
                timer = setTimeout(detect, 100);
            });

            detect();
        })();

</script></body></html>