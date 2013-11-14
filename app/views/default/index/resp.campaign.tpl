{extends 'default/resp.base.tpl'}
{block h1 append} キャンペーン{/block}
{block title append} キャンペーン{/block}
{block desc append}のお得なキャンペーン、割引情報をご紹介！初回割引はもちろん、サービスタイムやポイント、お友達紹介割引もあります！{/block}
{block keywords append},割引,キャンペーン初回割引,お友達紹介,サービスタイム,ポイント{/block}
{block css}
<link href="/css/resp/campaign.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/campaign/h2_img.jpg" width="950" height="120" alt="キャンペーン Campaign" /></h2>
{/block}

{block body}
<div class="main-row innerBox">
    {include 'default/include/first-time-price.tpl'}
</div>
<div class="main-row campaign">
    {include 'default/include/main-campaign.tpl'}
</div>
<div class="main-row">
    <div class="cam-line clearfix grad3d">  
        <img src="/img/campaign/cam-line_01.jpg"  alt="LINEでお得なクーポン始めました" width="891" height="117" />
        <div class="line-box">
            <div class="item">
                <img src="/img/campaign/cam-line_03.jpg"  alt="選べるＬＩＮＥクーポン　※ご予約時にお申し出ください。　ウォーターキューティクルケアまたはウォーター角質ケア　ＦＲＥＥ！！" width="640" height="152" class="desc" />
                <div class="line_button">
                    <a href="http://line.naver.jp/ti/p/%40terrablue" target="blank" /><img width="198" height="58" alt="友だち追加" src="http://biz.line.naver.jp/line_business/img/btn/addfriends_ja.png"></a>
                </div>
            </div>
        </div>
        <div class="about_line">
            <div class="item">
                <img src="/img/campaign/cam-line_02.jpg" alt="Ｗｈａｔ ｉｓ　ＬＩＮＥ？？" width="216" height="42" />
                <div class="line-text">無料で通話やメールが楽しめるアプリです。まずはお手持ちのスマートフォン/携帯電話やタブレット端末などでアプリをダウンロードして下さい。ダウンロード後、友だち登録をご利用いただけます。</div>
                <div class="line-banner"><a href="http://line.naver.jp/ja/" target="blank" /><img src="/img/campaign/cam-line_05.jpg"  alt="LINE公式ページ" width="219" height="81" target="blank" /></a></div>
            </div>        
        </div>
    </div>
</div>
<div class="main-row">
    <ul class="usual-cam clearfix">
        <li><div class="left"><img src="/img/campaign/photo01.jpg?2013-05-24" alt="お友達紹介 キャンペーン お友達もご紹介者の方も ご施術料金から10%OFF! TerraBlueのメンバー様からのご紹介でご来店された方とご家族・お友達をご紹介してくださったメンバー様両方に10％割引の特典をご用意させて頂いております。 ☆ご予約時に「○○さんからの紹介で」とオペレーターにお伝え下さい。※指名料・物販を除く" /></div></li>
        <li><img src="/img/campaign/photo02.jpg?2012-12-15" alt="ポイント貯めて、お得にネイル♪ PointCardService お得なポイントカードを発行しております。ご来店1回につき1ポイント付与。 (お会計税抜6,000円以上) ※ポイントカードはご本人様のみご使用いただけます。5回目5％OFF! 10回目10％OFF! 15回目15％OFF!" /></li>
    </ul>
</div>
{/block}