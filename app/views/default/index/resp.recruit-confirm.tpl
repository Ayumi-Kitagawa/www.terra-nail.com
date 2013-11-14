{extends 'default/resp.base.tpl'}
{block h1}ネイリスト　求人　渋谷・TerraBlue（テラブルー） 応募フォーム確認画面{/block}
{block title}ネイリスト　求人　渋谷・TerraBlue（テラブルー） 応募フォーム確認画面{/block}
{block desc}{/block}
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
            <a name="form" id="form"></a>
            <h3 class="heading-first"><span class="first">応</span>募フォーム<span class="sub">入力内容を確認して下さい</span></h3>
            <div class="tableBox">
                {$form->renderStartTag([class => mailForm]) nofilter}
                    <table cellpadding="0" cellspacing="0" summary="入力内容を確認して下さい" class="comTable png_bg">
                        <col width="27%" />
                        <col width="73%" />
                        <tbody>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fName">氏名</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.name->getValue()}
                                    {$form.name->renderHidden([id => fName]) nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fEmail">メールアドレス</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.email->getValue()}
                                    {$form.email->renderHidden([id => fEmail]) nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fTel">電話番号</label>
                                    <span class="text01">※</span></span>
                                </th>
                                <td>
                                    {$form.tel->getValue()}
                                    {$form.tel->renderHidden([id => fTel]) nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fAge">年齢</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    {$form.age->getValue()}
                                    {$form.age->renderHidden([id => fAge]) nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fSalon">性別</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    {Tn_Data_RecruitForm::getSex($form.sex->getValue())}
                                    {$form.sex->renderHidden() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fSalon">ネイルサロン勤務経験</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    {Tn_Data_RecruitForm::getSalonExp($form.salon->getValue())}
                                    {$form.salon->renderHidden() nofilter}
                                </td>
                            </tr>
                            <tr>
                                <th><span class="png_bg">
                                    <label for="fTest">検定・資格</label>
                                    <span class="text01">※</span>
                                    </span>
                                </th>
                                <td>
                                    {Tn_Data_RecruitForm::getLicense($form.license->getValue())}
                                    {$form.license->renderHidden() nofilter}
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
                                    {Tn_Data_RecruitForm::getPlace($form.place->getValue())}
                                    {$form.place->renderHidden() nofilter}
                                </td>
                            </tr>
                            {/if}
                        </tbody>
                    </table>
                    <ul class="submit hasBack clearfix">
                        <li class="back">
                            <input class="gray_button" type="submit" name="submit_back" value="◀&nbsp;修正">
                        </li>
                        <li>
                            <input class="gray_button" type="submit" name="submit_send" value="この内容で応募">
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