<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>日历</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="/css/amazeui.min.css">
    <link rel="stylesheet" href="/css/petshow.css?6">
    <link rel="stylesheet" href="/css/animate.min.css">
    <script src="/js/jquery.min.js"></script>
    <script src="/js/amazeui.min.js"></script>
    <script src="/js/amazeui.lazyload.min.js"></script>
</head>
<body>
<div data-am-widget="tabs" class="am-tabs am-tabs-d2 am_news_tab">
    <ul class="am-tabs-nav am-cf am_cf">
        <li class="am-active">
            <a href="[data-tab-panel-0]">历史的今天</a>
        </li>
    </ul>
    <div class="am-tabs-bd">
        <div data-tab-panel-0 class="am-tab-panel am-active">
            <div class="am-list-news-bd am_news_list_all">
                <ul class="am-list">
                    <!--缩略图在标题左边-->
                    <#if pageFinder.data??>
                        <#list pageFinder.data as historyToday>
                            <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                                <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                                    <a href="###" class="">
                                        <img src="/img/c.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"/>
                                    </a>
                                </div>
                                <div class=" am-u-sm-9 am-list-main am_list_main">
                                    <h3 class="am-list-item-hd am_list_title">
                                        <a href="###" class="">${historyToday.title}</a>
                                    </h3>
                                    <div class="am-list-item-text am_list_item_text ">${historyToday.content}</div>
                                </div>
                            </li>
                        </#list>
                    </#if>
                </ul>
                <div class="am_news_load"><span><i  class="am-icon-spinner am-icon-spin"></i> 更多萌宠照片</span></div>
            </div>
        </div>
        <div data-tab-panel-1 class="am-tab-panel ">



            <div class="am-list-news-bd am_news_list_all">
                <ul class="am-list">
                    <!--缩略图在标题左边-->
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/c.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"
                                />
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">你知道怎么辨别优秀的秋田犬幼犬吗？</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am_list_li">
                        <div class=" am-list-main">
                            <h3 class="am-list-item-hd am_list_title am_list_title_s">
                                <a href="###" class="">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>

                            <div class="am-list-item-text am_list_item_text">还在苦恼圣诞礼物再也玩儿不出新意？快来抢2013最炫彩的跨国圣诞礼物！【参与方式】1.关注“UniqueWay无二之旅”豆瓣品牌小站http://brand.douban.com/uniqueway/2.上传一张**本人**在旅行中色彩最浓郁、最丰富的照片（色彩包含取景地、周边事物、服装饰品、女生彩妆等等，发挥你们无穷的创意想象力哦！^^）一定要有本人出现喔！3.
                                在照片下方，附上一句旅行宣言作为照片说明。 成功参与活动！* 听他们刚才说，上传照片的次</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/y.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"
                                />
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">众包解决方案物流平台“我快到”：最后3公里的外卖配送应该外包出去</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/d.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"/>
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">哈佛大学公开课:公正-该如何做是好?</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                </ul>
                <div class="am_news_load"><span><i  class="am-icon-spinner am-icon-spin"></i> 更多萌宠照片</span></div>
            </div>



        </div>
        <div data-tab-panel-2 class="am-tab-panel ">



            <div class="am-list-news-bd am_news_list_all">
                <ul class="am-list">
                    <!--缩略图在标题左边-->
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/c.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"
                                />
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">那些动物的犀利眼神，仿佛看穿了我的内心</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am_list_li">
                        <div class=" am-list-main">
                            <h3 class="am-list-item-hd am_list_title am_list_title_s">
                                <a href="###" class="">“你的旅行，是什么颜色？” 晒照片，换北欧梦幻极光之旅！</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>

                            <div class="am-list-item-text am_list_item_text">还在苦恼圣诞礼物再也玩儿不出新意？快来抢2013最炫彩的跨国圣诞礼物！【参与方式】1.关注“UniqueWay无二之旅”豆瓣品牌小站http://brand.douban.com/uniqueway/2.上传一张**本人**在旅行中色彩最浓郁、最丰富的照片（色彩包含取景地、周边事物、服装饰品、女生彩妆等等，发挥你们无穷的创意想象力哦！^^）一定要有本人出现喔！3.
                                在照片下方，附上一句旅行宣言作为照片说明。 成功参与活动！* 听他们刚才说，上传照片的次</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/y.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"
                                />
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">众包解决方案物流平台“我快到”：最后3公里的外卖配送应该外包出去</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                    <li class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-left am_list_li">
                        <div class="am-u-sm-3 am-list-thumb am_list_thumb">
                            <a href="###" class="">
                                <img src="img/d.png" class="am_news_list_img" alt="我很囧，你保重....晒晒旅行中的那些囧！"/>
                            </a>
                        </div>
                        <div class=" am-u-sm-9 am-list-main am_list_main">
                            <h3 class="am-list-item-hd am_list_title">
                                <a href="###" class="">哈佛大学公开课:公正-该如何做是好?</a>
                            </h3>
                            <div class="am_list_author"><a href="javascript:void(0)"><span class="am_list_author_ico" style="background-image: url(img/tx.jpg);"></span><span class="name">Okaeri</span></a><span class="am_news_time">&nbsp;•&nbsp;<time class="timeago" title="2015-08-13 08:02:40 +0800" datetime="2015-08-13 08:02:40 +0800"> 2 小时前</time></span></div>
                            <div class="am-list-item-text am_list_item_text ">秋田犬是非常受欢迎的犬种之一，但是在饲养过程中可能会遇到一些难题。也许其他方面自己的爱犬都能配合，就是喂食的时候它表现出狗护食的欲望，让你无法接近。</div>
                        </div>
                    </li>
                </ul>
                <div class="am_news_load"><span><i  class="am-icon-spinner am-icon-spin"></i> 更多萌宠照片</span></div>
            </div>





        </div>
    </div>

</div>










<footer class="am_footer">
    <div class="am_footer_con">
        <div class="am_footer_link">
            <span>关于宠物秀</span>
            <ul>
                <li><a href="###">关于我们</a></li>
                <li><a href="###">发展历程</a></li>
                <li><a href="###">友情链接</a></li>
            </ul>
        </div>


        <div class="am_footer_don">
            <span>宠物秀</span>
            <dl>
                <dt><img src="img/footdon.png?1" alt=""></dt>
                <dd>一起Show我们的爱宠吧！宠物秀是图片配文字、涂鸦、COSPLAY的移动手机社区，这里有猫狗鱼龟兔子仓鼠龙猫等各种萌图。
                    <a href="###" class="footdon_pg "><div class="foot_d_pg am-icon-apple ">  App store</div></a><a href="###" class="footdon_az animated"><div class="foot_d_az am-icon-android ">  Android</div></a></dd>

            </dl>
        </div>

        <div class="am_footer_erweima">
            <div class="am_footer_weixin"><img src="img/wx.jpg" alt=""><div class="am_footer_d_gzwx am-icon-weixin"> 关注微信</div></div>
            <div class="am_footer_ddon"><img src="img/wx.jpg" alt=""><div class="am_footer_d_dxz am-icon-cloud-download"> 扫码下载</div></div>

        </div>

    </div>
    <div class="am_info_line">Copyright(c)2015 <span>PetShow</span> All Rights Reserved </div>
</footer>
<script>
    $(function(){
        $('.am_news_tab').css('min-height',$(window).height() - 52 - 220);
        if ($(window).width() < 600 ) {
            $('.am_list_item_text').each(
                    function(){
                        if($(this).text().length >= 26){
                            $(this).html($(this).text().substr(0,26)+'...');
                        }});}

    });

</script>
</body>
</html>
