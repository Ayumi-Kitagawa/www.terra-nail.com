{extends 'default/resp.base.tpl'}
{block h1}ネイリスト　求人　渋谷・{Tn_Helper_Salon::getName()}{/block}
{block title}ネイリスト　求人　渋谷・{Tn_Helper_Salon::getName()}{/block}
{block desc append}ではネイリストを募集しています！{/block}
{block keywords append},ネイリスト,求人,募集,研修,社会保険,有給{/block}
{block css}
<link href="/css/resp/recruit.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/recruit/h2_img.jpg" alt="採用情報Recruit" width="950" height="120" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="content">
            <h3 class="heading-color">ネイリストとしてよりハイレベルな技術を身につけたい方必見！</h3>
            <div class="blueSimpleBox clearfix">
                <div class="textBox">
                    <p>ネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}ではそれぞれの技術レベルに合わせた技術研修制度が充実しています。</p>
                    <p>お客様一人一人に合わせたベストな施術を、よりスピーディーにお客様へご提供する為に、JNA本部認定講師やバイオジェル上級エデュケーターによる技術講習会の他、外部セミナーへの参加(会社負担)等、日々スキルを向上できる環境が整っています。サロンワーク未経験者でも安心の研修体制です！</p>
                    <p class="mb0">また{Tn_Helper_Salon::getNameWithRuby() nofilter}ではネイリストの新卒採用を積極的に行っています。一流の技術を身につけたい方、大きな夢を持っている方、ネイリストとして人間として一緒に成長しませんか！</p>
                </div>
                <div class="photoBox"><img src="/img/recruit/photo01.jpg" alt="{Tn_Helper_Salon::getNameWithRuby() nofilter}技術講習会" width="356" height="207" /></div>
            </div>
        </div>

        <div class="content">
            <h3 class="heading-color">社会保険完備、初年度有給10日、毎日休憩一時間！</h3>
            <div class="blueSimpleBox clearfix">
                <div class="textBox">
                    <p>
                        社会保険(健康保険・厚生年金・雇用保険・労災保険)完備、 有給休暇(初年度10日)、ネイリストの皆さんが安心して長く働けるサロンを目指しています。
                    </p>
                    <p>
                        繁忙期も公休(月8日又は9日)はしっかり取れますし、毎日休憩は1時間☆
                        年2回の休暇制度もありますので、帰省や旅行に出かけたりと心身ともにリフレッシュできます！
                    </p>
                    <p class="mb0">
                        仕事もプライベートも充実した日々を送ることで、より良いサロンワークに繋がると私達は考えています。
                    </p>
                </div>
                <div class="photoBox"><img src="/img/resp/recruit/party.jpg" alt="目標達成パーティー" width="268" height="224" /></div>
            </div>
        </div>

        <div class="content">
            <h3 class="heading-color">活躍の場はあなたの頑張り次第！あなたの夢を全力でバックアップします！</h3>
            <div class="blueSimpleBox">
                <dl>
                    <dt>雑誌やTVなどのメディアで活躍!!!</dt>
                    <dd>
                        数々のメディアでネイルサロン{Tn_Helper_Salon::getNameWithRuby() nofilter}のネイリストが活躍中！あなたのデザインしたネイルが有名雑誌に掲載されることも☆
                        また、{Tn_Helper_Salon::getNameWithRuby() nofilter}には数々の著名人の方々にもご来店いただいています。モデルやアーティストからの指名が付くのも夢ではありません！
                    </dd>
                    <dt>コンテスト出場</dt>
                    <dd>
                        コンテストへの出場費用は会社負担。業界トップを目指すあなたを応援します！
                    </dd>
                    <dt>インストラクター</dt>
                    <dd>
                        高い技術を持つスタッフは、サロン内・サロン外の研修会にインストラクターとして参加しています。新人ネイリストの育成・技術研修など、これまでのスキルを生かして活躍することが出来ます！
                    </dd>
                    <dt>サロンマネージメント</dt>
                    <dd>
                        人材教育や、管理業務などサロン全体のマネージメント業務をお願いします。新メニューの考案や新商材の導入など、サロンワークとはまた違った、サロン作りに携わってみませんか？
                    </dd>
                </dl>
            </div>
        </div>

        <div class="content">
            <h3 class="heading-first"><span class="first">募</span>集要項</h3>
            <div class="tableBox">
                <table cellpadding="0" cellspacing="0" summary="募集要項" class="comTable">
                    <col width="25.5%" />
                    <col width="74.5%" />
                    <tbody>
                        <tr>
                            <th><span class="png_bg">雇用形態</span></th>
                            <td>&#9312;正社員　&#9313;アルバイト</td>
                        </tr>
                        <tr>
                            <th><span class="png_bg">給与</span></th>
                            <td>&#9312;正社員　月給20万円以上<br />
                                &#9313;アルバイト　時給900円以上<br />
                                ＊あなたのやる気をしっかり評価します。頑張り次第で高収入可能。
                            </td>
                        </tr>
                        <tr>
                            <th><span class="png_bg">勤務時間</span></th>
                            <td>9:30～22:00(シフト制/実働8時間)</td>
                        </tr>
                        <tr>
                            <th rowspan="3"><span class="png_bg">休日</span></th>
                            <td>年間休日109日</td>
                        </tr>
                        <tr>
                            <td>月8日又は9日(シフト制)</td>
                        </tr>
                        <tr>
                            <td>夏期休暇3日・冬季休暇3日</td>
                        </tr>
                        <tr>
                            <th rowspan="6"><span class="png_bg">待遇</span></th>
                            <td>社会保険(健康保険・厚生年金・雇用保険・労災保険)</td>
                        </tr>
                        <tr>
                            <td>各種資格手当・施術売上手当・物販売上手当・指名料全額バック・役職手当</td>
                        </tr>
                        <tr>
                            <td>定期健康診断</td>
                        </tr>
                        <tr>
                            <td>交通費全額支給</td>
                        </tr>
                        <tr>
                            <td>制服貸与</td>
                        </tr>
                        <tr>
                            <td>技術講習会・外部セミナー・コンテスト出場費用会社負担</td>
                        </tr>
                        <tr>
                            <th rowspan="3"><span class="png_bg">応募資格</span></th>
                            <td>性別不問</td>
                        </tr>
                        <tr>
                            <td>年齢不問</td>
                        </tr>
                        <tr>
                            <td>JNEネイリスト技能検定1級又は1級相当の技術がある方<br />
                                ＊技術レベル・経験により優遇します。</td>
                        </tr>
                        <tr>
                            <th><span class="png_bg">施術内容</span></th>
                            <td>バイオジェル・スカルプチュア・ケアカラー<br />
                                ＊バイオジェル・スカルプチュアの出数は5：5です。</td>
                        </tr>
                        <tr>
                            <th><span class="png_bg">勤務地</span></th>
                            <td>渋谷・新宿・池袋</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="content">
            {include 'global/include/company.tpl'}
        </div>
        <div class="content">
            <a name="form" id="form"></a>
            <h3 class="heading-first"><span class="first">応</span>募フォーム<span class="heading-sub">下記フォームよりご応募ください</span></h3>
            <div class="tableBox">
                <p><span class="text01">※</span>全てご入力お願いいたします。</p>
                {$form->renderStartTag([class => mailForm]) nofilter}
                    <table cellpadding="0" cellspacing="0" summary="応募フォーム 下記フォームよりご応募ください。" class="comTable">
                        <col width="27%" />
                        <col width="73%" />
                        <tbody>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fName">氏名</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.name->render([id => fName]) nofilter}
                                    {$form.name->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fEmail">メールアドレス</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.email->render([id => fEmail]) nofilter}
                                    {$form.email->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fTel">電話番号</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.tel->render([id => fTel]) nofilter}
                                    {$form.tel->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fAge">年齢</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    {$form.age->render([id => fAge]) nofilter}
                                    {$form.age->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fSalon">性別</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    <ul class="radio clearfix">
                                        {foreach $form.sex->getChildren() as $key => $elem}
                                        <li>
                                            {$elem->renderWithLabel() nofilter}
                                        </li>
                                        {/foreach}
                                    </ul>
                                    {$form.salon->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fSalon">ネイルサロン勤務経験</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    <ul class="radio clearfix">
                                        {foreach $form.salon->getChildren() as $key => $elem}
                                        <li>
                                            {$elem->renderWithLabel() nofilter}
                                        </li>
                                        {/foreach}
                                    </ul>
                                    {$form.salon->renderError() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fTest">検定・資格</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    <ul class="radio clearfix">
                                        {foreach $form.license->getChildren() as $key => $elem}
                                        <li>
                                            {$elem->renderWithLabel() nofilter}
                                        </li>
                                        {/foreach}
                                    </ul>
                                    {$form.license->renderError() nofilter}
                                </td>
                            </tr>
                            {if !$form.place instanceof Sdx_Null}
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fLocation">希望勤務地(複数可)</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    <ul class="radio clearfix">
                                        {foreach $form.place->getChildren() as $key => $elem}
                                        <li>
                                            {$elem->renderWithLabel() nofilter}
                                        </li>
                                        {/foreach}
                                    </ul>
                                    {$form.place->renderError() nofilter}
                                </td>
                            </tr>
                            {/if}
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