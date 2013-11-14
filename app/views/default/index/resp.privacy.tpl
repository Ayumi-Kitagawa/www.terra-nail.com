{extends 'default/resp.base.tpl'}
{block h1 append} プライバシーポリシー{/block}
{block title append} プライバシーポリシー{/block}
{block desc append}公式サイトでの個人情報の取り扱いなど、プライバシーポリシーを掲載してます。{/block}
{block keywords append},プライバシーポリシー{/block}
{block css}
<link href="/css/resp/privacy.css" rel="stylesheet" type="text/css" />
{/block}
{block js append}
{/block}
{block mainVisual}
{/block}

{block body}
<div class="main-row clearfix">
    <div id="conts">
      {include 'global/include/privacy.tpl'}
    </div>
    <div id="sideBar" class="only-pc">
      {include 'default/include/sidebar.tpl'}
    </div>
</div>
{/block}