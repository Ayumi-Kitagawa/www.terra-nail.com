{extends 'default/resp.base.tpl'}
{block h1 append} コンセプト{/block}
{block title append} コンセプト{/block}
{block desc append}の3つのお約束。ハイクオリティ・リラックス・リーズナブル{/block}
{block keywords append},技術,スピード,マッサージチェア,リクライニングチェア,定額,アート付け放題,良心価格{/block}
{block css}
<link href="/css/resp/concept.css?2013-07-27" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/concept/h2_img.jpg" alt="コンセプト Concept" /></h2>
{/block}

{block body}
<div class="main-row mainBox clearfix">
    <div id="conts">
        <div class="photo"><img src="/img/concept/photo01.jpg" alt="{Tn_Helper_Salon::getName()} 3つのお約束 ハイクオリティ　リラックス　リーズナブル 1 2 3 High-quality Relax Reasonable" width="690" height="190" /></div>
        <div class="inner clearfix">
            <div class="photoBox"><img src="/img/concept/photo02.jpg" alt="" width="120" height="118" /></div>
            <div class="textBox">
                <h3 class="heading-color">ハイクオリティ</h3>
                <p>ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}は全ネイリストがJNEネイリスト技能検定1級を取得しております。
研修終了後、厳しい社内試験に合格したネイリストだけがTerraBlueネイリストとしてデビューできます。お客様一人一人に合わせたベストな施術を、よりスピーディーにお客様へご提供するために、定期的に研修会や技術チェックを行い日々努力を重ねています。</p>
            </div>
        </div>
        <div class="inner clearfix">
            <div class="photoBox"><img src="/img/concept/photo03.jpg?2013-10-12" alt="" width="120" height="118" /></div>
            <div class="textBox">
                <h3 class="heading-color">リラックス</h3>
                <p>全席マッサージチェア！<br />
                    マッサージチェアでゆったり寛ぎながらネイルをお楽しみいただけます。</p>
            </div>
        </div>
        <div class="inner clearfix none">
            <div class="photoBox"><img src="/img/concept/photo04.jpg" alt="" width="120" height="118" /></div>
            <div class="textBox">
                <h3 class="heading-color">リーズナブル</h3>
                <p>安心のアート定額メニュー、ずっと通っていただける良心価格をお約束いたします。<a href="http://www.terra-eyelash.com/">まつげエクステサロン TerraGreen 渋谷店</a>と共通のお得なポイントカードもご用意しております。</p>
            </div>
        </div>
        <div class="info">
            <div class="subInfo grad3d blueBox">
                <p class="heading-stripe">TerraBlue GM ごあいさつ</p>
                <div class="clearfix">
                    <div class="photoBox small_on_mobile"><img src="/img/nailist/yoshikawa/main.jpg" alt="吉川　百合絵" width="195" /></div>
                    <div class="pBox">
                        <p>
                            何を求めてお客様はご来店されるのか。どのような目的で当店を選んでくださったか。そこを一番に考え、お客様のご希望を叶えたいと思っています。
                        </p>
                        <p>
                            初めての方は不安と希望を抱いてご来店されていると思います。『不安』はお店のドアを開けた瞬間から取り除いてあげたい。『希望』は必ず形にしていきたい。そして『満足』を感じてお帰りいただきたいと思っています。
                        </p>
                        <p>
                            {Tn_Helper_Salon::getNameWithRuby() nofilter}では、まず爪を傷めることなくずっとネイルを楽しんでいただく為のご提案をさせて頂きます。人それぞれ爪に悩みがあったり、ずっとネイルをしていて大丈夫か？と不安をお持ちかと思います。
                        </p>
                        <p>
                            私たちはできる限り、お客様の『悩み』や『不安』を解消できるように、日々勉強と練習を繰り返し、新しい商品や技術を試し研究しています。悩みや不安のある方は、是非一度ご相談ください！
                        </p>
                        <p>
                            そしてデザインについて。<br>新しいハッと心惹かれるようなデザインが、ご来店された方全員に見つかりますように、5000点以上のサンプルをご用意してお待ちしております。その時の季節や気分、まだ誰もしていない最新のデザイン、ブライダル･成人式等のイベント向けデザイン、お客様が考えたオーダーメイドデザイン、イメージやシチュエーションだけ伺ってあとはお任せなど。自由に希望を伝えてみてください。
                        </p>
                        <p>
                            とりあえず{Tn_Helper_Salon::getNameWithRuby() nofilter}に行こう、そうすれば何か素敵なことをチャージしてこれる。
                            そんな風に思っていただけるようなサロンを目指します！
                        </p>
                        <p class="name"><img src="/img/resp/yosikawa.png" alt="吉川 百合絵" /></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">{include 'default/include/sidebar.tpl'}</div>
</div>
{/block}