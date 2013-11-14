{extends 'default/resp.base.tpl'}
{block title append} トップ{/block}
{block desc append}公式サイトへようこそ！{/block}
{block keywords append}{/block}
{block css}
<link href="/css/resp/reservation.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/reservation/h2_img.jpg" alt="インターネット仮予約" width="952" height="121" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <h3 class="heading-first"><span class="first">仮</span>予約フォーム<span class="heading-sub">ありがとうございました</span></h3>
        <div class="tableBox">
            <div class="step">
                <h4>ご予約確定までの流れ</h4>
                <img src="/img/resp/reservation/step-bar-result.png" alt="入力内容の確認" width="652" height="56">
            </div>
            <div id="reserve_result" class="grad3d blueBox">{$is_sp = $sdx_context->getUserAgent()->isMobile() || $sdx_context->getUserAgent()->isSmartphone()}
                <p class="title">
                    仮予約ありがとうございます。<br>
                    予約確定のため{if $phone}{$phone}{else}送信いただいた番号{/if}までお電話をさせて頂きます。
                </p>
                <ul class="msg">
                    <li>このフォームからのお申込みいただいた内容は｢仮予約｣としてお受けいたします｡ </li>
                    <li>仮予約後、予約センターからお客様にお電話を差し上げ、 ご予約日時・メニュー内容等の確認がとれた時点で「<strong>本予約</strong>」と致します。</li>
                    <li>万が一、予約センターより折り返しの電話がない場合は、お手数ですが予約センター
                <span class="phone">{if $is_sp}<a href="tel:{Tn_Data_Phone::getReservation(false)}">{Tn_Data_Phone::getReservation()}</a>{else}{Tn_Data_Phone::getReservation()}{/if}</span>へご連絡くださいますようお願い申し上げます。 </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">
    {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}