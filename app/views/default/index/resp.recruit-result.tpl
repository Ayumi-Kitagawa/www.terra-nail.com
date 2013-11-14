{extends 'default/resp.base.tpl'}
{block h1}ネイリスト　求人　渋谷・TerraBlue（テラブルー）応募フォーム送信結果{/block}
{block title}ネイリスト　求人　渋谷・TerraBlue（テラブルー）応募フォーム送信結果{/block}
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
            <h3 class="heading-first"><span class="first">応</span>募フォーム<span class="sub">ご応募ありがとうございました</span></h3>
            <div class="tableBox">
                <div class="thxMesasge grad3d blueBox">
                    <p class="title">送信完了</p>
                    <p class="msg">ご応募ありがとうございました。<br>担当者よりご連絡させて頂きます。</p>
                </div>
            </div>
        </div>
    </div>
    <div id="sideBar" class="only-pc">
    {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}