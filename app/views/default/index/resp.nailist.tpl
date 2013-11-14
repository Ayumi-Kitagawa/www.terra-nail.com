{extends 'default/resp.base.tpl'}
{block h1 append} ネイリスト{/block}
{block title append} ネイリスト{/block}
{block desc append}　ネイリストのご紹介。{/block}
{block keywords append}ネイリスト,得意なアート,資格,趣味{/block}
{block css}
<link href="/css/resp/nailist.css?2013-07-27" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/nailist/h2_img.jpg" width="950" height="120" alt="ネイリスト紹介 Nailist" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        {foreach $shops as $shop}
        <div class="nailist">
            <h3 id="shop_{$shop->getCode()}" class="heading">{$shop->getName()}</h3>
            {foreach $shop->getOrderedNailistList() as $nailist}
            <div id="nailist_{$nailist->getCode()}" class="item clearfix">
                <div class="photoBox">
                    {if !$nailist->getAppointment()->isNull()}
                    <div class="positionImg"><img src="/img/nailist/{$nailist->getAppointment()->getCode()}.png" width="179" height="66" alt="{$nailist->getAppointment()->getName()}" /></div>
                    {/if}
                    <div class="photo"><img src="/img/nailist/{$nailist->getCode()}/main.jpg" width="285" height="320" alt="{$nailist->getName()}" /></div>
                    <p class="name"><span class="jaName">{$nailist->getName()}</span><span class="enName">{$nailist->getNameRome()}</span></p>
                </div>
                <div class="textBox">
                    <p class="p-title"><img src="/img/resp/p_title.gif" width="65" height="20" alt="Profile" /></p>
                    <div class="tabBox">
                        <table cellpadding="0" cellspacing="0" summary="Profile">
                            <tbody>
                                <tr>
                                    <th>資格：</th>
                                    <td>
                                    {foreach $nailist->getOrderedLicenseList() as $license}
                                        {$license->getName()}<br />
                                    {/foreach}
                                    </td>
                                </tr>
                                <tr>
                                    <th>出身地：</th>
                                    <td>{$nailist->getHomeTown()}</td>
                                </tr>
                                <tr>
                                    <th>誕生日：</th>
                                    <td>{$nailist->getBirthMonth()}月{$nailist->getBirthDay()}日</td>
                                </tr>
                                <tr>
                                    <th>血液型：</th>
                                    <td>{$nailist->getBloodType()}</td>
                                </tr>
                                <tr>
                                    <th>趣味・特技：</th>
                                    <td>{$nailist->getHobby()}</td>
                                </tr>
                                <tr>
                                    <th>得意な技術：</th>
                                    <td>{$nailist->getNailSkill()}</td>
                                </tr>
                                <tr class="trSpecial">
                                    <th>自己紹介：</th>
                                    <td>{$nailist->getIntroduction()|nl2br nofilter}</td>
                                </tr>
                                <tr>
                                    <th>指名料：</th>
                                    <td>{$nailist->getPrice()}&nbsp;yen</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="pBox clearfix">
                        <p class="title"><img src="/img/nailist/imgtext03.gif" width="58" height="58" alt="お客様へ 一言" /></p>
                        <p class="text">{$nailist->getComment()|nl2br nofilter}</p>
                    </div>
                    {if $nailist->hasNailArt()}
                    <div class="link"><a href="/nailart?nailist={$nailist->getId()}"><img src="/img/nailist/link.jpg" width="334" height="65" alt="新作アートはこちら" /></a></div>
                    {/if}
                </div>
            </div>
            {/foreach}
        </div>
        {/foreach}
    </div>
    
    <div id="sideBar" class="only-pc">
        {foreach $shops as $shop}
        <div class="sNavi">
            <p class="shop title"><a href="#shop_{$shop->getCode()}">{$shop->getName()}</a></p>
            <ul>
                {foreach $shop->getOrderedNailistList() as $nailist}
                <li><a href="#nailist_{$nailist->getcode()}">{$nailist->getNameRome()}</a></li>
                {/foreach}
            </ul>
        </div>
        {/foreach}
        {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}