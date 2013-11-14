{extends 'default/resp.base.tpl'}
{block h1 append} {if $nailist}&nbsp;{$nailist->getName()}の{/if}新作アート{/block}
{block title append} {if $nailist} {$nailist->getName()}の{/if}新作アート{/block}
{block desc append}{if $nailist} {$nailist->getName()}の{/if}新作アートのご紹介。ページ{$pager->getPage()}{/block}
{block keywords append},ネイルアート,ネイルサンプル{/block}
{block css}
<link href="/js/cps3.0.5/photoswipe.css" type="text/css" rel="stylesheet" />
<link href="/css/resp/nailart.css?2013-10-07" rel="stylesheet" type="text/css" />
{/block}
{block js append}
<script src="/js/attach-height/jquery.attach-height.js"></script>
<script src="/js/cps3.0.5/lib/klass.min.js"></script>
<script src="/js/cps3.0.5/code.photoswipe-3.0.5.min.js"></script>
<script src="/js/jquery.scrollTo.min.js"></script>
<script src="/js/nailart.js"></script>
{/block}
{block mainVisual}
<h2><img src="/img/nailart/h2_img.jpg" alt="新作アート New art" width="950" height="120" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="search main-row only-mobile">
            <select id="nailist_select">
                <option value="">{if $nailist}全てのアートを見る{else}ネイリストを選択{/if}</option>
                {foreach $shops as $shop}
                <optgroup label="{$shop->getName()}">
                    {foreach $shop->getOrderedNailistList() as $person}
                    {if $person->hasNailArt()}
                    <option value="{$person->getId()}"{if $nailist && $nailist->getId() == $person->getId()} selected="selected"{/if}>{$person->getName()}</option>
                    {/if}
                    {/foreach}
                </optgroup>
                {/foreach}
            </select>
        </div>
        {if $nailist}
        <div class="inner clearfix main-row">
            <div class="textBox">
                <div class="photoBox"><a href="/nailist#nailist_{$nailist->getCode()}"><img src="/img/nailist/{$nailist->getCode()}/main.jpg" alt="{Tn_Helper_Salon::getName()} ネイリスト {$nailist->getName()}" ></a></div>
                <div class="title">
                    <p class="name"><a href="/nailist#nailist_{$nailist->getCode()}">{$nailist->getName()}</a></p>
                    <p class="nameRome">{$nailist->getNameRome()}</p>
                </div>
                <p>{$nailist->getComment()|nl2br nofilter}</p>
            </div>
        </div>
        {/if}
        <ul id="nailImages" class="clearfix main-row">
            {foreach $arts as $art name="image"}
            <li class="art{if $smarty.foreach.image.last} is_last{/if}{if $smarty.foreach.image.first} is_first{/if}">
                <div class="new-icon">{if $art->isNewArt()}<img src="/img/nailart/new.gif" alt="new">{else}&nbsp;{/if}</div>
                <div class="image">
                    <a href="{$art->getPath()}" class="lightbox" title="{$art->getNailist()->getShop()->getName()} 「{$art->getNailist()->getName()}」 {$art->getZendDate('created_at')->toString('yyyy年MM月')}" target="_brank"><img src="{$art->getThumbPath()}" alt="{$art->getNailist()->getShop()->getName()} 「{$art->getNailist()->getName()}」 {$art->getZendDate('created_at')->toString('yyyy年MM月')}" /></a>
                </div>
            </li>
            {/foreach}
        </ul>
        <div class="pager clearfix"><div class="prev btn_p">{$pager->getPrevLink('前のページ', [class => 'btn']) nofilter}</div><div class="next btn_p">{$pager->getNextLink('次のページ', [class => 'btn']) nofilter}</div></div>
    </div>
    <div id="sideBar" class="only-pc">
        <div class="link"><a href="/nailart"><img src="/img/common/link02.jpg" alt="All Design Click&rarr;" width="215" height="64" /></a></div>
        {foreach $shops as $shop}
        <div class="sNavi">
            <p class="shop title"><a href="#shop_{$shop->getCode()}">{$shop->getName()}</a></p>
            <ul>
                {foreach $shop->getOrderedNailistList() as $nailist}
                {if $nailist->hasNailArt()}
                <li><a href="/nailart?nailist={$nailist->getId()}">{$nailist->getNameRome()}</a></li>
                {/if}
                {/foreach}
            </ul>
        </div>
        {/foreach}
        {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}