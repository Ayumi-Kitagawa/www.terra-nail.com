{extends 'default/resp.base.tpl'}
{block h1 append} 店舗情報{/block}
{block title append} 店舗情報{/block}
{block desc append}の住所・マップ、予約センターの電話番号等店舗情報をご案内しています。{/block}
{block keywords append},マップ,住所,予約センター,郵便番号,予約時の注意{/block}
{block css}
<link href="/css/resp/salon.css?2013-07-27" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/salon/h2_img.jpg" width="950" height="120" alt="店舗情報 Salon" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="main-row">
            <div class="title">
                <div class="name">{Tn_Helper_Salon::getName()} 渋谷店</div>
                渋谷ヒカリエ隣　渋谷駅東口 徒歩1分　地下鉄15番出口 徒歩10秒
            </div>
            <div class="shop_data">
                <h3 class="heading-grad">Salon Data</h3>
                <div class="table-wrap">
                    <table>
                        <tr>
                            <th>Address</th>
                            <td class="clearfix">
                                〒150－0002　<br class="auto">
                                東京都渋谷区渋谷2-22-11 渋谷フランセ奥野ビル6F
                                <div class="sublink">
                                    <a class="m-button" target="_blank" href="http://maps.google.co.jp/maps?q=%E3%83%8D%E3%82%A4%E3%83%AB+%E6%B8%8B%E8%B0%B7+TerraBlue&z=16">GoogleMap</a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>営業時間</th>
                            <td>
                                <span class="small-h">サロン：</span>10:00~22:00<br>
                                <span class="small-h">予約センター：</span>11:00~21:00
                            </td>
                        </tr>
                        <tr>
                            <th>ご予約</th>
                            <td class="clearfix">
                                {if $is_sp}<a class="m-button" href="tel:{Tn_Data_Phone::getReservation(false)}">{/if}{Tn_Data_Phone::getReservation()}{if $is_sp}</a>{/if}
                                <div class="sublink">
                                    <a class="m-button" href="/reservation">24H WEB仮予約</a>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="map">
                <img src="/img/salon/map.jpg?2013-09-28" alt="ネイルサロン 渋谷 {Tn_Helper_Salon::getName()} 地図" width="690" height="466" />
            </div>
        </div>
        <div class="main-row">
            {if $is_sp}<a href="tel:{Tn_Data_Phone::getReservation(false)}">{/if}<img src="/img/resp/salon/tel-banner.png" alt="予約センター：{Tn_Data_Phone::getReservation()}　営業時間:11:00~21:00" width="690" height="74">{if $is_sp}</a>{/if}
        </div>
        <div class="main-row">
            <a href="/reservation"><img src="/img/common/net-banner.jpg" alt="インターネット仮予約" width="690" height="105"></a>
        </div>
        <div class="reserve-notice main-row">
            <div class="textBox">
                <h3 class="heading-ring">ご注意事項</h3>
                <div class="sub-row">
                    <h4 class="heading-grad">ご予約時</h4>
                    <ul class="textList">
                        <li>ご予約後の大幅なメニュー変更はお受けできない場合がございますのでご注意下さい。</li>
                        <li>ご予約のお時間を15分過ぎますと、キャンセル扱いとさせていただきます。</li>
                        <li>ご予約のお日にち・お時間・施術内容のご変更は、お早めに{Tn_Helper_Salon::getName()}予約センターへご連絡くださいませ。</li>
                        <li>当日のご予約キャンセルは<span>キャンセル料として5,250を円頂戴しています。</span>ご注意くださいませ。</li>
                    </ul>
                </div>
                <div class="sub-row">
                    <h4 class="heading-grad">ご来店時</h4>
                    <ul class="textList">
                        <li>施術中の携帯電話のご利用は、溶剤による電話機の変色、故障の恐れが ございますのでお控えくださいませ。</li>
                        <li>アクセサリーを外される場合は、お客様ご自身での管理・保管をお願い致します。</li>
                        <li>お客様の皮膚及び爪の状態により、施術をお断りする場合がございます。</li>
                        <li>未就学児（小学校入学前のお子様）のご入店・ペットご同伴でのご入店は、ご遠慮頂いておりますので、ご理解・ご協力を頂けますようお願い致します。</li>
                    </ul>
                </div>
                <div class="sub-row">
                    <h4 class="heading-grad">技術保証</h4>
                    <ul class="textList">
                        <li>当店の技術保証期間は1週間となります。デザインやお客様の過失による不具合を除き、<span>1週間以内にご連絡を頂いた場合に限り</span>1回無料でお直しをさせていただきます。<br>
                            ※お客様の爪の状態や環境により、持続性に個人差がございますので予めご了承くださいませ。
                        </li>
                        <li>お直しの予約をキャンセルされますと、次のご予約は有料でのお直しとさせていただきます。確実にお越しいただけるお日にちをお選び下さい。</li>
                        <li>お直しに入らせていただくスタッフに限りがございますので、こちらからお日にちを指定させて頂く場合がございます。予めご了承下さい。</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">
        {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}