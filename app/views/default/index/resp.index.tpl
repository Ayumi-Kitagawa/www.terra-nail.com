{extends 'default/resp.base.tpl'}
{block title append} トップ{/block}
{block desc}渋谷・ヒカリエ隣、ジェルもスカルプも安心の定額制。全席マッサージチェア、ネイルアートサンプル5000種以上、高技術ネイルサロンTerraBlue テラブルー公式サイトへようこそ！{/block}
{block keywords append}{/block}
{block css}
<link href="/js/ResponsiveSlides/responsiveslides.css" rel="stylesheet" type="text/css" />
<link href="/css/resp/index.css?2013-09-08" rel="stylesheet" type="text/css" />
<link rel="canonical" href="http://www.terra-nail.com/"/>
{/block}
{block js append}
<script src="/js/ResponsiveSlides/responsiveslides.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function(){
        $('.images.rslides').responsiveSlides();
    });
</script>
{/block}
{block mainVisual}
<div class="rslides-wrapper">
    <ul class="images rslides">
        <li><img src="/img/index/photo01.jpg?2013-10-19" alt="{Tn_Helper_Salon::getName()} 店内の写真" ></li>
        <li><img src="/img/index/photo02.jpg?2013-09-08" alt="{Tn_Helper_Salon::getName()} スカルプ" ></li>
        <li><img src="/img/index/photo03.jpg?2013-09-08" alt="{Tn_Helper_Salon::getName()} ジェルネイル　ベッコウ　ハンド・フット" ></li>
        <li><img src="/img/index/photo04.jpg?2013-09-08" alt="{Tn_Helper_Salon::getName()}　ジェルネイル　レオパード" ></li>
        <li><img src="/img/index/photo05.jpg?2013-09-08-2" alt="{Tn_Helper_Salon::getName()}　ジェルネイル　エレガント ハンド・フット" ></li>
        <li><img src="/img/index/photo06.jpg?2013-09-08" alt="{Tn_Helper_Salon::getName()}　スカルプ　キュート" ></li>
    </ul>
</div>
{/block}

{block body_top}{Stakeout::getTag(1, $sdx_context->isTestMode()) nofilter}{/block}

{block body}
<div class="main-row innerBox">
    {include 'default/include/first-time-price.tpl'}
</div>
<div class="main-row campaign">
    {include 'default/include/main-campaign.tpl'}
</div>
<div class="main-row mainBox clearfix">
    <div id="conts">
        <div class="item">
            <h2 class="heading">Infomation</h2>
            <dl class="clearfix">
            {foreach $news as $item}
                <dt>{$item.date}</dt>
                <dd><a href="{$item.link}" target="_blank">{$item.title}</a></dd>
            {/foreach}
            </dl>
        </div>
        <div class="item facebook">
            {if $is_sp}
            <div class="fb-like-box" data-href="http://www.facebook.com/terra.nail" data-height="600" data-show-faces="true" data-stream="false" data-border-color="#ccc" data-header="true"></div>
            {else}
            <div class="fb-like-box" data-href="http://www.facebook.com/terra.nail" data-height="800" data-show-faces="true" data-stream="true" data-border-color="#ccc" data-header="true"></div>
            {/if}
        </div>
    </div>
    <div id="sideBar" class="only-pc">{include 'default/include/sidebar.tpl'}</div>
</div>
{/block}