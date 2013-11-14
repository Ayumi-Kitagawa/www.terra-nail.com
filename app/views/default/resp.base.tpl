<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    {block viewport}<meta name="viewport" content="width=device-width, initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0, user-scalable=no">{/block}
    <title>{block title}ネイルサロン 渋谷 {Tn_Helper_Salon::getName()}{/block}</title>
    <meta name="description" content="{block desc}渋谷・ヒカリエ隣、ジェルもスカルプも安心の定額制。全席マッサージチェアでくつろぎネイルサロン {Tn_Helper_Salon::getName()}{/block}">
    <meta name="keywords" content="{block keywords}ネイルサロン,渋谷,テラ,Terra,テラブルー,TerraBlue,ネイルサロン{/block}">
    <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/resp/base.css?2013-10-01-2">
    <link rel="shortcut icon" href="/img/favicon.ico" />
    <link rel="icon" href="/img/favicon.ico" />
    {block css}{/block}
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="/image/header-line280.js"></script>
    {block js}{/block}
    <script>
        $(function(){
            var menu = $('#g-menu');
            var header = $('#header');
            $('.responsive-menu-button').click(function(){
                menu.toggleClass('smartMenu');
                return false;
            });

            $('.to-top-button').click(function(){
                window.scrollTo(0, 1);
                return false;
            });

            var win = $(window);
            var prevWidth;
            win.resize(function(e){
                var width = win.width();
                if(prevWidth && prevWidth != width){
                    menu.removeClass('smartMenu');
                }

                prevWidth = width;
            });
        });
    </script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-26053886-3']);
        _gaq.push(['_trackPageview']);

        (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
</head>
<body>
    {block body_top}{/block}
    <div id="body-wrap">
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/ja_JP/all.js#xfbml=1&appId=136762756471498";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <h1>{block h1}ネイルサロン 渋谷 {Tn_Helper_Salon::getName()}{/block}</h1>
        <div class="container">
            <div id="header">
                <div class="conts clearfix">
                    <div class="logo"><a href="/"><img src="/img/common/logo.jpg" alt="ネイルサロン　渋谷　{Tn_Helper_Salon::getName()}" /></a></div>
                    <div class="misc clearfix">
                        <div class="title only-pc">
                            {if $is_sp}
                            <a href="tel:{Tn_Data_Phone::getReservation(false)}"><img src="/img/common/link01.jpg" alt="ご予約・お問い合わせ" width="135" height="20" /></a>
                            {else}
                            <img src="/img/common/link01.jpg" alt="ご予約・お問い合わせ" width="135" height="20" />
                            {/if}
                        </div>
                        <div class="values">
                            <p class="contact only-pc">
                                {if $is_sp}<a href="tel:{Tn_Data_Phone::getReservation(false)}">{Tn_Data_Phone::getReservation()}</a>{else}{Tn_Data_Phone::getReservation()}{/if}
                                <img src="/img/common/imgtext01.png" class="only-pc" alt="サロン営業時間 10:00～22：00 予約センター営業時間 11:00～21:00" width="240" />
                            </p>
                            <p class="webres">
                                <a href="/reservation" class="reserve-button only-pc"><img src="/img/common/net-top.png" alt="インターネット仮予約" /></a>
                                <a href="#" class="only-mobile responsive-menu-button"><img src="/img/resp/menu-button.png" alt="メニューを開く"></a>
                            </p>
                        </div>
                    </div>
                </div>
                <div id="g-menu" class="only-pc">
                    <div class="title only-mobile">MENU</div>
                    <ul class="menu-list unstyled clearfix">
                        <li class="item only-mobile strong"><a href="tel:{Tn_Data_Phone::getReservation(false)}"><span class="en">予約センターへ電話</span><span class="ja">{Tn_Data_Phone::getReservation()}</span></a></li>
                        <li class="item only-mobile strong"><a href="/reservation"><span class="en">Reservation</span><span class="ja">インターネット仮予約</span></a></li>
                        <li class="item empty only-mobile">&nbsp;</li>
                        <li class="item only-mobile"><a href="/"><span class="en">Top</span><span class="ja">トップ</span></a></li>
                        <li class="item only-mobile"><a href="/campaign"><span class="en">Campaign</span><span class="ja">キャンペーン</span></a></li>
                        <li class="item first"><a href="/concept"><span class="en">Concept</span><span class="ja">コンセプト</span></a></li>
                        <li class="item"><a href="/color-parts"><span class="en">Promise</span><span class="ja">こだわり</span></a></li>
                        <li class="item"><a href="/nailart"><span class="en">NailArt</span><span class="ja">新作アート</span></a></li>
                        <li class="item"><a href="/nailist"><span class="en">Nailist</span><span class="ja">ネイリスト</span></a></li>
                        <li class="item"><a href="/menu"><span class="en">Menu</span><span class="ja">メニュー</span></a></li>
                        <li class="item"><a href="/salon"><span class="en">Salon</span><span class="ja">店舗情報</span></a></li>
                        <li class="item"><a href="/press"><span class="en">Press</span><span class="ja">メディア掲載</span></a></li>
                        <li class="item"><a href="/recruit"><span class="en">Recruit</span><span class="ja">採用情報</span></a></li>
                        <li class="item only-mobile"><a href="/company"><span class="en">Company</span><span class="ja">会社概要</span></a></li>
                        <li class="item only-mobile"><a href="/privacy"><span class="en">PrivacyPolicy</span><span class="ja">プライバシーポリシー</span></a></li>
                        <li class="item empty only-mobile">&nbsp;</li>
                        <li class="item only-mobile"><a href="http://www.terra-eyelash.com/" target="_blank">
                            <span class="en"><i class="icon-chevron-sign-right"></i>&nbsp;TerraGreen</span>
                            <span class="ja">渋谷 まつげエクステ NEW OPEN!!</span>
                        </a></li>
                        <li class="item empty only-mobile">&nbsp;</li>
                        <li class="item only-mobile line">
                            <a href="http://line.naver.jp/ti/p/%40terrablue">
                                <span class="en">
                                    <img alt="友だち追加" src="http://biz.line.naver.jp/line_business/img/btn/addfriends_ja.png">
                                </span>
                                <span class="ja">公式LINE限定のお得なクーポン</span>
                            </a>
                        </li>   
                        <li class="item only-mobile">
                            <a href="twitter://user?screen_name=nail_terra">
                                <span class="en">
                                    公式Twitter
                                </span>
                                <span class="ja">Twitterアプリで開く</span>
                            </a>
                        </li>
                        <li class="item only-mobile">
                            <a href="fb://profile/274770629208684">
                                <span class="en">
                                    Facebookページ
                                </span>
                                <span class="ja">Facebookアプリで開く</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mainVisiual">
            <div class="container">
                <div><a href="http://www.terra-eyelash.com/" target="_blank" title="渋谷　まつげエクステサロン　TerraGreen - テラグリーン"><img src="/img/resp/green_banner.jpg" alt="渋谷　まつげエクステサロン　TerraGreen - テラグリーン　渋谷駅徒歩3分　宮益坂　2013年10月15日オープン"></a></div>
                {block mainVisual}{/block}
            </div>
        </div>
        <div class="container">
            <div class="body"><div id="body_inner">{block body}{/block}</div></div>
        </div>
        <div class="container">
            <div id="footer">
                <div class="fBox clearfix">
                    <div class="fLogo"><a href="/"><img src="/img/common/f_logo.png" alt="渋谷　ネイル　{Tn_Helper_Salon::getName()}" ></a></div>
                    <ul class="fNavi clearfix only-pc">
                        <li class="items"><img src="/img/common/f_link01.gif" alt="Contents" width="57" height="14" />
                            <ul class="list">
                                <li><a href="concept">コンセプト</a></li>
                                <li><a href="nailart">新作アート</a></li>
                                <li><a href="nailist">ネイリスト紹介</a></li>
                                <li><a href="color-parts">カラー・パーツ</a></li>
                            </ul>
                        </li>
                        <li class="items"><img src="/img/common/f_link02.gif" alt="Price" width="34" height="14" />
                            <ul class="list">
                                <li><a href="menu">メニュー</a></li>
                                <li><a href="campaign">キャンペーン</a></li>
                            </ul>
                        </li>
                        <li class="items"><img src="/img/common/f_link03.gif" alt="Information" width="72" height="14" />
                            <ul class="list">
                                <li><a href="salon">店舗情報</a></li>
                                <li><a href="press">プレス</a></li>
                            </ul>
                        </li>
                        <li class="items last"><img src="/img/common/f_link04.gif" alt="Company" width="61" height="14" />
                            <ul class="list">
                                <li><a href="recruit">採用情報</a></li>
                                <li><a href="company">会社概要</a></li>
                                <li><a href="privacy">プライバシーポリシー</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="only-mobile menu">
                        <a class="to-top-button" href="#"><img src="/img/resp/top-button.png" alt="ページトップへ"></a>
                    </div>
                </div>
            </div>
        </div>
        <p class="copyright">Copyright 2012 {Tn_Helper_Salon::getAlphabetName()} Co., Ltd. All rights reserved.</p>
    </div>
</body>
</html>