{extends 'default/resp.base.tpl'}
{block h1 append} 個室・メニューのご案内{/block}
{block title append} 個室・メニューのご案内{/block}
{block desc append}の個室・メニューのご案内{/block}
{block keywords append}個室,メニュー,料金表,価格,ジェル,スカルプチュア,オーダーチップ{/block}
{block css}
<link href="/css/resp/menu.css?2013-07-27" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/menu/h2_img.jpg" width="950" height="120" alt="メニューMenu"/></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="menu">
            <a name="room" id="room"></a>
            <h3 class="clearfix"><div class="thumb"><img src="/img/resp/menu/room.jpg" width="60" height="60" alt="個室" /></div>個室</h3>
            <div class="tableBox clearfix">
                <div class="photoBox"><img src="/img/resp/menu/koshitsu.jpg" width="229" height="265" alt="個室イメージ" /></div>
                <div class="textBox">
                    <h4 class="heading-color">個室のご案内</h4>
                    <p>
                        ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}渋谷店には、個室をご用意しています。お部屋の中は、白を基調としたラグジュアリーなプライベート空間。マッサージチェアで、映画を見ながらゆったりとネイルをお楽しみいただけます。
                    </p>
                    <p>
                        施術料金＋10％でご利用いただけます。個室をご希望のお客様は、ご予約の際にオペレーターにお申し出下さい。
                    </p>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">個室利用料</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="個室利用料">
                        <tbody>
                            <tr class="back">
                                <td colspan="3" class="room-price">施術料金+10%</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="menu">
            <h3 class="clearfix"><div class="thumb"><img src="/img/resp/menu/gel.jpg" width="60" height="60" alt="ソフトジェル" /></div>ソフトジェル</h3>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">
                        ハンドソフトジェル　アート定額コース<br>
                    </p>
                </div>
                <div class="priv">ソフトジェルオフ無料　ファイリング・ドライケア込</div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="ハンドソフトジェル　アート定額コース〈ソフトジェルオフ無料〉＊ファイリング・ドライケア込">
                        <tbody>
                            <tr class="back">
                                <th>90分アート定額</th>
                                <td class="price"><span class="unit">&yen;</span><span>9,000</span></td>
                                <td><span>( &yen;</span><span class="number">9,450</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>120分アート定額</th>
                                <td class="price"><span class="unit">&yen;</span><span>12,000</span></td>
                                <td><span>( &yen;</span><span class="number">12,600</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>120分以降10分</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>1,000</span></td>
                                <td><span>( &yen;</span><span class="number">1,050</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">
                        フットソフトジェル　アート定額コース<br>
                    </p>
                </div>
                <div class="priv">ソフトジェルオフ無料　フットバス・ファイリング・ドライケア・マッサージ込</div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="フットソフトジェル　アート定額コース〈ソフトジェルオフ無料〉＊フットバス・ファイリング・ドライケア・マッサージ込">
                        <tbody>
                            <tr class="back">
                                <th>90分アート定額</th>
                                <td class="price"><span class="unit">&yen;</span><span>10,500</span></td>
                                <td><span>( &yen;</span><span class="number">11,025</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>120分アート定額</th>
                                <td class="price"><span class="unit">&yen;</span><span>13,500</span></td>
                                <td><span>( &yen;</span><span class="number">14,175</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>120分以降10分</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>1,000</span></td>
                                <td><span>( &yen;</span><span class="number">1,050</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <dl class="desc">
                    <dt>【アート定額内容】</dt>
                    <dd>
                        <div>スワロフスキー／ホログラム／シール／シェル／レース／スタッズ／ブリオン／チェーン／3D／フラットアート／エアーブラシ＊パーツ及び一部アート別料金</div>
                    </dd>
                </dl>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">ハンドソフトジェル単品</p>
                </div>
                <div class="priv">ファイリング・ドライケア込</div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="ハンドソフトジェル単品　＊ファイリング・ドライケア込">
                        <tbody>
                            <tr class="back">
                                <th>ラメグラ／一色塗り</th>
                                <td class="price"><span class="unit">&yen;</span><span>6,000</span></td>
                                <td><span>( &yen;</span><span class="number">6,300</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>フレンチ／カラグラ／マーブル／ピーコック</th>
                                <td class="price"><span class="unit">&yen;</span><span>7,000</span></td>
                                <td><span>( &yen;</span><span class="number">7,350</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">フットソフトジェル単品</p>
                </div>
                <div class="priv">フットバス・ファイリング・ドライケア・マッサージ込</div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="フットソフトジェル単品　＊フットバス・ファイリング・ドライケア・マッサージ込">
                        <tbody>
                            <tr class="back">
                                <th>ラメグラ／一色塗り</th>
                                <td class="price"><span class="unit">&yen;</span><span>7,500</span></td>
                                <td><span>( &yen;</span><span class="number">7,875</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>フレンチ／カラグラ／マーブル／ピーコック</th>
                                <td class="price"><span class="unit">&yen;</span><span>8,500</span></td>
                                <td><span>( &yen;</span><span class="number">8,925</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">その他</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="その他">
                        <tbody>
                            <tr class="back">
                                <th>補強1本</th>
                                <td class="price"><span class="unit">&yen;</span><span>500</span></td>
                                <td><span>( &yen;</span><span class="number">525</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>チップ長さだし1本</th>
                                <td class="price"><span class="unit">&yen;</span><span>500</span></td>
                                <td><span>( &yen;</span><span class="number">525</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>スカルプチュア長さだし1本</th>
                                <td class="price"><span class="unit">&yen;</span><span>700</span></td>
                                <td><span>( &yen;</span><span class="number">735</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="menu">
            <h3 class="clearfix"><div class="thumb"><img src="/img/resp/menu/sculp.jpg" width="60" height="60" alt="スカルプチュア" /></div>スカルプチュア</h3>
            <div class="photo"><img src="/img/menu/photo01.jpg?2012-12-15"  width="634" height="190" alt="サービスタイムService Time平日 13:00～15:00日曜・祝日 19:00以降入店※サービスタイムは実施していない期間がございますので必ずご予約時にお問い合わせ下さい。スカルプチュアアート定額180分※ジェルコート込み &yen;12,500(&yen;13,125税込) &yen;11,000(&yen;11,550税込)リペア＋アート定額 ※ジェルコート込み&yen;13,500(&yen;14,175税込) &yen;12,000(&yen;12,600税込)" /></div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">スカルプチュア</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="スカルプチュア">
                        <tbody>
                            <tr class="back">
                                <th>クリア／ラメグラ</th>
                                <td class="price"><span class="unit">&yen;</span><span>7,000</span></td>
                                <td><span>( &yen;</span><span class="number">7,350</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">スカルプチュアアート定額コース</p>
                </div>
                <div class="priv">ジェルコート込み</div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="スカルプチュアアート定額コース ＊ジェルコート込み">
                        <tbody>
                            <tr class="back">
                                <th>
                                    アート定額180分<br>
                                    <span class="notice">＊180分にスカルプチュアオン・ジェルコート含む</span>
                                </th>
                                <td class="price"><span class="unit">&yen;</span><span>12,500</span></td>
                                <td><span>( &yen;</span><span class="number">13,125</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>
                                    リペア＋アート定額<br>
                                    <span class="notice">＊180分にスカルプチュアリペア・ジェルコート含む</span>
                                </th>
                                <td class="price"><span class="unit">&yen;</span><span>13,500</span></td>
                                <td><span>( &yen;</span><span class="number">14,175</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>180分以降10分</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>1,000</span></td>
                                <td><span>( &yen;</span><span class="number">1,050</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <dl class="desc">
                    <dt>【アート定額内容】</dt>
                    <dd>
                        <div>スワロフスキー／ホログラム／シール／シェル／レース／スタッズ／ブリオン／チェーン／3D／フラットアート／エアブラシ</div>
                        <div class="notice">
                            <div>[注意点]</div>
                            <ul>
                                <li>＊長さ2マスまで定額内　以降2マス毎&yen;1,000(&yen;1,050)</li>
                                <li>＊パーツ及び一部アート別料金</li>
                            </ul>
                        </div>
                    </dd>
                </dl>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">スカルプリペア</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="スカルプリペア">
                        <tbody>
                            <tr class="back">
                                <th>スカルプリペア</th>
                                <td class="price"><span class="unit">&yen;</span><span>7,000</span></td>
                                <td><span>( &yen;</span><span class="number">7,350</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ロング料金2マス毎</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>1,000</span></td>
                                <td><span>( &yen;</span><span class="number">1,050</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>ジェルコート</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>1,500</span></td>
                                <td><span>( &yen;</span><span class="number">1,575</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="chip"><img src="/img/menu/photo02.jpg" width="691" height="107" alt="オーダーチップ&yen;12,500(&yen;13,125税込)Order Chipお渡しまでに7日間お時間を頂戴しております。" /></div>
        <div class="menu">
            <h3 class="clearfix"><div class="thumb"><img src="/img/resp/menu/care.jpg" width="60" height="60" alt="ケア・カラー" /></div>ケア・カラー</h3>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">ケア・カラー</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="ケア・カラー">
                        <tbody>
                            <tr class="back">
                                <th>ケアカラー[ハンド]<br />
                                    <span class="notice">ファイリング・バッフィング・ウォーターキューティクルケア・ウォーター角質ケア・カラーリング1色</span>
                                </th>
                                <td class="price"><span class="unit_2">&yen;</span><span>6,000</span></td>
                                <td><span>( &yen;</span><span class="number_2">6,300</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ケアカラー[フット]<br />
                                    <span class="notice">フットバス・ファイリング・バッフィング・キューティクルケア・カラー1色・マッサージ</span>
                                </th>
                                <td class="price"><span class="unit">&yen;</span><span>7,000</span></td>
                                <td><span>( &yen;</span><span class="number">7,350</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>トータルケア[ハンド]<br />
                                    <span class="notice">ファイリング・バッフィング・ウォーターキューティクルケア・ウォーター角質ケア</span>
                                </th>
                                <td class="price"><span class="unit_2">&yen;</span><span>5,000</span></td>
                                <td><span>( &yen;</span><span class="number_2">5,250</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>トータルケア[フット]<br />
                                    <span class="notice">フットバス・ファイリング・キューティクルケア・バッフィング・角質除去・マッサージ</span>
                                </th>
                                <td class="price"><span class="unit">&yen;</span><span>9,000</span></td>
                                <td><span>( &yen;</span><span class="number">9,450</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">オプション</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="オプション">
                        <tbody>
                            <tr class="back">
                                <th>フット角質ケア</th>
                                <td class="price"><span class="unit">&yen;</span><span>4,500</span></td>
                                <td><span>( &yen;</span><span class="number">4,725</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ハンドウォーターキューティクルケア&nbsp;+&nbsp;角質ケア</th>
                                <td class="price"><span class="unit">&yen;</span><span>2,000</span></td>
                                <td><span>( &yen;</span><span class="number">2,100</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>パラフィンパック</th>
                                <td class="price"><span class="unit">&yen;</span><span>1,500</span></td>
                                <td><span>( &yen;</span><span class="number">1,575</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ハンド／フット スクラブ</th>
                                <td class="price"><span class="unit">&yen;</span><span>500</span></td>
                                <td><span>( &yen;</span><span class="number">525&nbsp;</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="menu">
            <h3 class="clearfix"><div class="thumb"><img src="/img/resp/menu/off.jpg" width="60" height="60" alt="ネイルオフ" /></div>ネイルオフ</h3>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">ソフトジェルオフ</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="ソフトジェルオフ">
                        <tbody>
                            <tr class="back">
                                <th>ハンド付替ソフトジェルオフ</th>
                                <td class="price"><span class="unit">&yen;</span><span>1,000</span></td>
                                <td><span>( &yen;</span><span class="number">1,050</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>フット付替ソフトジェルオフ</th>
                                <td class="price"><span class="unit">&yen;</span><span>2,500</span></td>
                                <td><span>( &yen;</span><span class="number">2,625</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>長さ出し・補強オフ／1本</th>
                                <td class="price"><span class="unit">＋&nbsp;&yen;</span><span>150</span></td>
                                <td><span>( &yen;</span><span class="number">157</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">その他オフ</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="その他オフ">
                        <tbody>
                            <tr class="back">
                                <th>スカルプ付替オフ</th>
                                <td class="price"><span class="unit">&yen;</span><span>2,500</span></td>
                                <td><span>( &yen;</span><span class="number">2,625</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ハードジェル付替オフ</th>
                                <td class="price"><span class="unit">&yen;</span><span>3,000</span></td>
                                <td><span>( &yen;</span><span class="number">3,150</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>ポリッシュオフ</th>
                                <td class="price"><span class="unit">&yen;</span><span>500</span></td>
                                <td><span>( &yen;</span><span class="number">525</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tableBox">
                <div class="title">
                    <p class="png_bg">オフのみ</p>
                </div>
                <div class="tableWrap">
                    <table class="stripe-table" cellpadding="0" cellspacing="0" summary="オフのみ">
                        <tbody>
                            <tr class="back">
                                <th>ハンドジェルオフのみ</th>
                                <td class="price"><span class="unit">&yen;</span><span>4,000</span></td>
                                <td><span>( &yen;</span><span class="number">4,200</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>フットジェルオフのみ</th>
                                <td class="price"><span class="unit">&yen;</span><span>5,000</span></td>
                                <td><span>( &yen;</span><span class="number">5,250</span><span>税込)</span></td>
                            </tr>
                            <tr class="back">
                                <th>スカルプオフのみ</th>
                                <td class="price"><span class="unit">&yen;</span><span>5,000</span></td>
                                <td><span>( &yen;</span><span class="number">5,250</span><span>税込)</span></td>
                            </tr>
                            <tr>
                                <th>ハードジェルオフのみ</th>
                                <td class="price"><span class="unit">&yen;</span><span>6,000</span></td>
                                <td><span>( &yen;</span><span class="number">6,300</span><span>税込)</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">
    {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}