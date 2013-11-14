{extends 'default/resp.base.tpl'}
{block h1 append}　ジェル・豊富なカラー・スワロフスキー・パーツ{/block}
{block title append}　最高品質のジェル・豊富なカラー・スワロフスキー・パーツ{/block}
{block desc append}には250色以上のカラージェル・40種類以上のスワロフスキー・シーズンや流行に合わせた豊富なパーツをご用意しています！{/block}
{block keywords append},バイオジェル,カルジェル,豊富なカラー,スワロフスキー,シーズン毎のパーツ,流行のパーツ{/block}
{block css}
<link href="/css/resp/color-parts.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/color/h2_img.jpg?2013-02-27" width="950" height="120" alt="カラー・パーツ紹介" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
	<div id="conts">
		<div class="main-row">
			<h3 class="heading-color">SoftGel<span class="heading-sub">お客様に最適なジェルをご提案</span></h3>
			<div class="blueSimpleBox clearfix">
				<div class="textBox">
					<p>
						ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}では、バイオジェル、カルジェルをはじめとしたベースジェル、思い通りのアートを実現する250色以上のカラージェル、強度、つやと輝きのあるトップジェル、全て選び抜かれた最高品質の商材を使用しております。
					</p>
				</div>
				<div class="color-photo">
					<img src="/img/color/photo05.jpg" alt="最高品質のジェルを使用" width="295" height="223" />
				</div>
			</div>
		</div>
	
		<div class="main-row">
			<h3 class="heading-color">Color<span class="heading-sub">豊富なカラーバリエーション</span></h3>
			<div class="blueSimpleBox clearfix">
				<div class="textBox">
				    <p>カラージェルは250種類以上、スカルプチュアのカラーパウダーは90種類以上を取り揃えています。ポリッシュやエアーブラシのカラーも豊富です。</p>
					<p>
						お客様のイメージやお好みにより近づけるため、カラージェルを混ぜてお客様だけのオリジナルカラーも作成します。Mixすることで、他にはない絶妙なカラーを表現することが可能です。《※1色Mix＋100円（税込105円）》どうぞお気軽にご相談くださいませ。
					</p>
				</div>
				<div class="color-photo"><img src="/img/color/photo01.jpg" alt="豊富なジェルカラー" width="295" height="223" /></div>
			</div>
		</div>

		<div class="main-row">
			<h3 class="heading-color">Swarovski<span class="heading-sub">本物の美しい輝きを指先へ</span></h3>
			<div class="blueSimpleBox clearfix">
				<div class="textBox">
				    <p>
				    	ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}では、スワロフスキー社製のネイルストーンをご用意しております。シャープに光り輝くその美しさは世界一と言われ、 宝飾品としても数多く使用されています。
				    </p>
					<p>カラーは40種類以上、サイズも豊富に取り揃えています！本物のスワロフスキーひと粒ひと粒の輝きが、お客様の指先を美しく彩ります。</p>
				</div>
				<div class="color-photo"><img src="/img/color/photo02.jpg" alt="本物のスワロフスキー" width="295" height="223" /></div>
			</div>
		</div>

		<div class="main-row">
			<h3 class="heading-color">Parts<span class="heading-sub">可愛い新作パーツが多数！</span></h3>
			<div class="blueSimpleBox clearfix">
				<div class="textBox">
					<p>
						アートパーツも豊富にご用意しております。定額コースにプラスして、オリジナリティ溢れるネイルにランクアップ！シーズンや流行に合わせた新作パーツを随時ご用意しています！
					</p>
					<div class="collection"><img src="/img/color/photo04_3.jpg?2013-10-26" alt="ウィンターコレクション" width="313" height="315" /></div>
				</div>
				<div class="color-photo"><img src="/img/color/photo03.jpg" alt="シーズンや流行に合わせた、可愛いパーツが多数！" width="295" height="445" /></div>
			</div>
		</div>
	</div>
	<div id="sideBar" class="only-pc">
	{include 'default/include/sidebar.tpl'}
	</div>
</div>
{/block}