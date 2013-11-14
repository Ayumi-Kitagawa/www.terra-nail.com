www.terra-nail.com仮予約<br />
<br />
■氏名<br />
<tab />{$name}<br />
<br />
■電話番号<br />
<tab />{$tel1}-{$tel2}-{$tel3}<br />
<br />
■電話希望時間<br />
{foreach $tel_times as $tel_time}
<tab />{$tel_time}<br />
{/foreach}
<br />
■希望日時<br />
<tab />{$date} {$hour[0]}:{$min[0]}<br />
<br />
■施術内容<br />
{foreach $parts as $part}
<tab />{$part}<br />
{/foreach}
<br />
{if $off[0]}
<tab />{$off[0]}<br />
<br />
{/if}
{if $room[0]}
<tab />{$room[0]}<br />
<br />
{/if}
{if $free}
■備考<br />
<tab />{$free nofilter}<br />
<br />
{/if}