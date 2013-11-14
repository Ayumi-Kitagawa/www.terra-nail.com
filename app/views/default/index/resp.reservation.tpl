{extends 'default/resp.base.tpl'}
{block h1 append} インターネット仮予約{/block}
{block title append} インターネット仮予約{/block}
{block desc append}公式サイト。インターネット仮予約を24時間受け付けております。{/block}
{block keywords append},インターネット予約,WEB予約,オンライン予約,24時間予約{/block}

{block css}
<link href="/css/resp/reservation.css?2013-07-30" rel="stylesheet" type="text/css" />
{/block}

{block js append}
<script src="/js/global/jquery.cookie.js"></script>
<script src="/js/global/reservation.js"></script>
{/block}

{block mainVisual}
<h2><img src="/img/reservation/h2_img.jpg" alt="インターネット仮予約" /></h2>
{/block}


{block body}
<div class="main-row clearfix">
    <div id="conts">
        <h3 class="heading-first"><span class="first">仮</span>予約フォーム<span class="heading-sub">ご希望をご記入ください</span></h3>
        <div class="entryBox">
            <input type="hidden" id="current_time" value="{$current_time->getTimestamp()}">
            <div class="tableBox">
                <div class="step">
                    <h4>ご予約確定までの流れ</h4>
                    <img src="/img/resp/reservation/step-bar-start.png" alt="フォームの入力" width="652" height="56">
                    <p class="notice">予約センター営業中(11:00〜21:00)はお電話{if $is_sp}&nbsp;<a class="m-button" href="tel:{Tn_Data_Phone::getReservation(false)}">{Tn_Data_Phone::getReservation()}</a>{else}{Tn_Data_Phone::getReservation()}{/if}でのご予約がスムーズです</p>
                </div>
                {$form->renderStartTag([class => mailForm]) nofilter}
                    <table cellpadding="0" cellspacing="0" summary="応募フォーム 下記フォームよりご応募ください。" class="comTable">
                        <tbody>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>お電話</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <div class="sub-row">
                                        <div class="telInput">
                                            {$form.tel1->render([placeholder=>"090", class=>"tel"]) nofilter}&nbsp;-&nbsp;
                                            {$form.tel2->render([placeholder=>1234, class=>"tel"]) nofilter}&nbsp;-&nbsp;
                                            {$form.tel3->render([placeholder=>5678, class=>"tel"]) nofilter}
                                        </div>
                                        {if $tel_errors}
                                        <ul class="sdx_error">
                                            {if $tel_errors.empty}
                                            <li>電話番号を入力して下さい</li>
                                            {/if}
                                            {if $tel_errors.number}
                                            <li>数字を入力して下さい</li>
                                            {/if}
                                        </ul>
                                        {/if}
                                        <p class="msg">※予約センターよりご確認のお電話をさせて頂きます。ご確認後、ご予約が確定しますので、電話番号はお間違いの無いようご記入お願い致します。</p>
                                    </div>
                                    <div class="sub-row">
                                        <p class="title">■お電話の繋がりやすい時間がございましたらお知らせ下さい。</p>{$options = $form.tel_times->getChildren()}
                                        <div class="clearfix">
                                            <div class="times">
                                            {foreach $options as $key => $option}
                                            {$option->renderWithLabel() nofilter}
                                            {if $option@iteration == count($options) / 2}
                                            </div><div class="times">
                                            {/if}
                                            {/foreach}
                                            </div>
                                        </div>
                                        {$form.tel_times->renderError() nofilter}
                                        <p class="msg">※複数選択可能です。</p>
                                    </div>
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
                                        {$form.name->render() nofilter}
                                        {$form.name->renderError() nofilter}
                                        <p class="msg">※ひらがな又はalphabetでご記入下さい。</p>
                                        <p class="msg">※フルネームをご記入下さい。</p>
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
                                        {$form.date->render([class=>span2]) nofilter}&nbsp;
                                        {$form.hour->render([class=>span1]) nofilter}
                                        {$form.min->render([class=>span1]) nofilter}
                                        <p class="msg">
                                            ※20時以降は翌日13時以降のご予約が可能です。
                                        </p>
                                        <p class="msg">※最終受付時間はメニューにより異なります。詳細はお電話でご確認下さい。</p>
                                        <p class="msg">
                                            ※予約センター営業中の当日のご予約は&nbsp;<span class="phone">{if $is_sp}<a class="m-button" href="tel:{Tn_Data_Phone::getReservation(false)}">{Tn_Data_Phone::getReservation()}</a>{else}{Tn_Data_Phone::getReservation()}{/if}</span>&nbsp;までお電話でお願いいたします。
                                        </p>
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
                                    <div class="sub-row">
                                        <div class="clearfix">
                                            {$form.parts->render() nofilter}
                                        </div>
                                        <p class="msg">※複数選択可能です。</p>
                                        {$form.parts->renderError() nofilter}
                                    </div>
                                    <div class="sub-row">
                                        {$form.off->render() nofilter}
                                    </div>
                                    <div class="sub-row">
                                        {$form.room->render() nofilter}
                                        <p class="msg">※個室をご用意しております。詳しくは<a class="m-button" href="/menu#room" target="_blank">こちら</a>を御覧ください。</p>
                                    </div>
                                    <div class="sub-row">
                                        <p class="title">■備考</p>
                                        {$form.free->render() nofilter}
                                        <p class="msg">※<a class="m-button" href="/menu" target="_blank">メニュー</a>・<a class="m-button" href="/nailist" target="_blank">指名</a>がお決まりでしたらご記入いただくとスムーズです。またご要望・ご質問がございましたらご記入下さい。</p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>同意事項</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <p class="agree">
                                        ■このフォームからお申込みいただいた内容は｢仮予約｣としてお受けいたします｡仮予約後、予約センターからお客様にお電話を差し上げ、 ご予約日時・メニュー内容等の確認がとれた時点で「本予約」とさせて頂きます。
                                    </p>
                                    <p class="agree">■予約状況によりご希望に添えないことや、ご予約をお断りさせていただく場合もございます。予めご了承ください。 </p>
                                    <p class="agree">■万が一、予約センターより確認電話の折り返しがない場合は、お手数ですが予約センターへご連絡くださいますようお願い申し上げます。</p>
                                    <p class="agree">■ご予約内容の変更やキャンセルは予約センターへ直接お電話でご連絡ください。</p>
                                    <p class="agree">予約センター:<span class="phone">{if $is_sp}<a class="m-button" href="tel:{Tn_Data_Phone::getReservation(false)}">{Tn_Data_Phone::getReservation()}</a>{else}{Tn_Data_Phone::getReservation()}{/if}</span><br>
                                    <span class="msg">営業時間&nbsp;11:00～21:00</span>
                                    </p>
                                    {$form.agree->render([class=>strong]) nofilter}
                                    {$form.agree->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th class="form">
                                    <span class="png_bg">
                                        <label>情報保存</label>
                                    </span>
                                </th>
                                <td class="form">
                                    <p class="msg">
                                        お名前と電話番号を端末に保存します。ネットカフェ等公共の端末では使用しないで下さい。
                                    </p>
                                    <p class="msg">
                                        削除する場合はチェックを外してフォームを送信して下さい。
                                    </p>
                                    <label for="save_data" class="strong"><input id="save_data" type="checkbox" value="1" name="save_data[]">次回は自動で入力</label>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <ul class="submit">
                        <li>
                            <input class="gray_button" type="submit" name="submit_confirm" value="入力内容を確認">
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