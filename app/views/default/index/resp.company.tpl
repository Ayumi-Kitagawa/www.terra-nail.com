{extends 'default/resp.base.tpl'}
{block h1 append} 会社情報{/block}
{block title append} 会社情報{/block}
{block desc append}の運営会社、株式会社シンシアのご紹介{/block}
{block keywords append},会社情報,株式会社,シンシア,Sincere{/block}
{block css}
<link href="/css/resp/recruit.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
<h2><img src="/img/company/h2_img.jpg" alt="会社情報Company" width="950" height="120" /></h2>
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
        <div class="content">
            {include 'global/include/company.tpl'}
        </div>
    </div>
    <div id="sideBar" class="only-pc">
    {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}