{extends 'default/resp.base.tpl'}
{block h1 append}仮予約　入力内容確認{/block}
{block title append} インターネット仮予約　入力内容確認{/block}
{block desc append}公式サイト。インターネット仮予約の入力内容を確認して下さい。{/block}
{block keywords append},インターネット予約,WEB予約,オンライン予約,24時間予約{/block}
{block css}
<link href="/css/resp/reservation.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/reservation/h2_img.jpg" alt="インターネット仮予約" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <h3 class="heading-first"><span class="first">仮</span>予約フォーム<span class="heading-sub">入力内容をご確認下さい</span></h3>
        <div class="entryBox">
            <div class="tableBox">
                <div class="step">
                    <h4>ご予約確定までの流れ</h4>
                    <img src="/img/resp/reservation/step-bar-confirm.png" alt="入力内容の確認" width="652" height="56">
                </div>
                {$form->renderStartTag([class => mailForm]) nofilter}
                    <table cellpadding="0" cellspacing="0" summary="インターネット仮予約フォーム　入力内容を確認して下さい" class="comTable">
                        <tbody>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>お電話</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <div class="sub-row">
                                        <p class="notice">番号をもう一度ご確認下さい</p>
                                        {$form.tel1->render([readonly=>readonly, class=>'tel readonly value']) nofilter}&nbsp;-&nbsp;
                                        {$form.tel2->render([readonly=>readonly, class=>'tel readonly value']) nofilter}&nbsp;-&nbsp;
                                        {$form.tel3->render([readonly=>readonly, class=>'tel readonly value']) nofilter}
                                        <p class="msg">※予約センターよりご確認のお電話をさせて頂きます。ご確認後、予約が確定しますので、電話番号はお間違いの無いようご記入お願い致します。</p>
                                    </div>
                                    </div>{if $form.tel_times->getValue()}
                                    <div class="sub-row">
                                        <p class="title">■確認電話のお時間</p>
                                        
                                        <div class="clearfix">
                                            {$form.tel_times->renderHidden() nofilter}
                                            <ul class="value">
                                            {foreach $form.tel_times->getValue() as $value}
                                                <li>{$value}</li>
                                            {/foreach}
                                            </ul>
                                        </div>
                                    </div>
                                    {/if}
                                </td>
                            </tr>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>おなまえ</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <div class="sub-row">
                                        {$form.name->renderHidden() nofilter}
                                        <div class="value">{$name}様</div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>ご希望日</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <div class="sub-row">
                                        {$form.date->renderHidden() nofilter}
                                        {$form.hour->renderHidden() nofilter}
                                        {$form.min->renderHidden() nofilter}
                                        <div class="value">{$date}&nbsp;{$hour}:{$min}</div> 
                                        <p class="msg">※日時に関しましては電話でのご確認時に調整させていただく場合がございます。ご了承下さい。</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>施術内容</label>
                                    </span>
                                </th>
                                <td class="form">
                                    {$form.parts->renderHidden() nofilter}
                                    {$form.room->renderHidden() nofilter}
                                    {$form.off->renderHidden() nofilter}
                                    {$form.free->renderHidden() nofilter}
                                    <div class="sub-row">
                                        <ul class="clearfix value">
                                            {foreach $parts as $part}
                                            <li>{$part}</li>
                                            {/foreach}
                                        </ul>
                                    </div>
                                    {if $off[0]}
                                    <div class="sub-row">
                                        <div class="value">{$off[0]}</div>
                                    </div>
                                    {/if}
                                    {if $room[0]}
                                    <div class="sub-row">
                                        <div class="value">{$room[0]}</div>
                                    </div>
                                    {/if}
                                    {if $free}
                                    <div class="sub-row">
                                        <p class="title">■備考</p>
                                        <div class="value">{$free|nl2br nofilter}</div>
                                    </div>
                                    {/if}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    {$form.agree->renderHidden() nofilter}
                    <ul class="submit hasBack clearfix">
                        <li class="back">
                            <input class="gray_button" type="submit" name="submit_back" value="◀&nbsp;修正">
                        </li>
                        <li>
                            <input class="gray_button" type="submit" name="submit_send" value="仮予約を送信">
                        </li>
                        <li>
                            &nbsp;
                        </li>
                    </ul>
                </form>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">
    {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}