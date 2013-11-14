{extends 'default/resp.base.tpl'}
{block h1 append} 雑誌・メディア{/block}
{block title append} 雑誌・メディアで紹介{/block}
{block desc append}は雑誌やテレビ、WEBメディアで多数紹介されています。{/block}
{block keywords append},雑誌,テレビ{/block}
{block css}
<link href="/css/resp/press.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/press/h2_img.jpg" alt="プレス Press" width="950" height="120" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="main-row">
            ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}では、各メディア様への掲載・取材への協力を積極的に行っております。TerraBlue広報担当{if $is_sp}<a class="m-button" href="tel:0354572850">{else}<span class="tel">{/if}03-5457-2850{if $is_sp}</a>{else}</span>{/if}までご連絡下さいませ。
        </div>
        <div class="pressBox main-row">
            <h3 class="heading-color">Magazines</h3>
            {foreach $magazines as $mag}
            <div class="pressInner">
                <div class="wrap clearfix">
                    <h4 class="title">{$mag.title}</h4>
                    <div class="floater photoBox">
                        <div class="inner"><img src="{$mag.img}" width="160" alt="{$mag.title}" /></div>
                    </div>
                    <div class="floater textBox">
                        <div class="inner">
                            <p class="sub">{$mag.sub}</p>
                            <p>{if $mag.desc}{$mag.desc}{else}ネイルサロンTerraBlueをご紹介いただきました♪{/if}</p>
                        </div>
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
        <div class="pressBox main-row">
            <h3 class="heading-color">Web</h3>
            <div class="pressInner">
                <div class="wrap clearfix">
                    <h4>小学館女性誌ポータルサイト・FAnetでネイルサロンTerraBlueを紹介していただきました！</h4>
                    <div class="floater photoBox">
                        <div class="inner"><img src="/img/press/photo04.jpg" width="180" height="56" alt="FAnet" /></div>
                    </div>
                    <div class="floater textBox">
                        <div class="inner">
                            セレブロガー5名の体験レポートは<a class="m-button" href="http://clubfanet-love.269g.net/article/15482392.html" target="_blank">こちら</a>(小学館FAnet/ラブラボBLOG)<br>
                                FAnet(小学館の女性誌ポータルサイト)は<a class="m-button" href="http://fanet.jp" target="_blank">こちら</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pressBox main-row">
            <h3 class="heading-color">TV</h3>
            <div class="pressInner">
                <div class="wrap clearfix">
                    <h4>フジテレビ ドラマ『インディゴの夜』の撮影でネイルサロンTERRAの店内が使用されました！</h4>
                    <div class="floater photoBox">
                        <div class="inner"><img src="/img/press/photo05.jpg" width="200" height="156" alt="髪飾りですか？これを今日はネイルに・・・" /></div>
                    </div>
                    <div class="floater textBox">
                        <div class="inner">
                            <p class="sub">2009年1月12日放送</p>
                            掲載店舗　：　TerraBlue<br />
                            <a class="m-button" href="http://www.ntv.co.jp/zoomin/index.html" target="_blank">日本テレビ　ズームイン!!SUPER</a>で成人式直前のTerraBlueの様子が紹介されました☆　詳しい放送内容は<a class="m-button" href="http://ameblo.jp/nail-terra/entry-10227639866.html" target="_blank">こちら！</a><br>
                            振袖とネイルを合わせるという、オシャレな新成人のお客様が、 TerraBlueにもたくさんいらっしゃいました！撮影に来ていただいた番組スタッフの皆様・ ご協力頂いたお客様、本当にありがとうございました！
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">{include 'default/include/sidebar.tpl'}</div>
</div>
{/block}