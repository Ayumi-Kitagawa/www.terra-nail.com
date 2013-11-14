{extends 'default/resp.base.tpl'}
{block title append} システムエラー{/block}

{block body}
	<div class="main-row clearfix">
		<div id="conts" style="height:300px;">
			<p style="font-size:14px;font-weight:bold;">申し訳ございません。システムエラーでページが表示できません。しばらくたってからもう一度お試し下さい。</p>
		</div>
		<div id="sideBar" class="only-pc">{include 'default/include/sidebar.tpl'}</div>
	</div>
{/block}