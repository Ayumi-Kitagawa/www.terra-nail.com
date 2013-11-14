www.terra-nail.comより応募です。<br />
<br />
■氏名<br />
<tab />{$name}<br />
<br />
■メールアドレス<br />
<tab />{$email}<br />
<br />
■電話番号<br />
<tab />{$tel}<br />
<br />
■年齢<br />
<tab />{$age}<br />
<br />
■性別<br />
<tab />{Tn_Data_RecruitForm::getSex($sex)}<br />
<br />
■ネイルサロン勤務経験<br />
<tab />{Tn_Data_RecruitForm::getSalonExp($salon)}<br />
<br />
■検定・資格<br />
<tab />{Tn_Data_RecruitForm::getLicense($license)}<br />
<br />
■勤務地希望<br />
{if $place}
  <tab />{Tn_Data_RecruitForm::getPlace($place)}<br />
{else}
  <tab />選択なし
{/if}