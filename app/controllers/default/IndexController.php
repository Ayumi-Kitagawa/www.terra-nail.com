<?php
/**
 *
 *
 * @author  Masamoto Miyata <miyata@able.ocn.ne.jp>
 * @create  2010/03/21
 * @copyright 2007 Sunrise Digital Corporation.
 * @version  v 1.0 2010/03/21 18:50:08 Miyata
 **/

class IndexController extends Sdx_Controller_Action_Http
{
  public function preDispatch()
  {
    parent::preDispatch();
    $ua = $this->_getContext()->getUserAgent();
    $this->view->assign('is_sp', $ua->isMobile() || $ua->isSmartphone());
    Tn_Controller_Action_Helper_Reservation::setup('テラブルー仮予約', 'reserve@terra-nail.com');
    Tn_Controller_Action_Helper_Recruit::setup('ネイリスト求人応募', 'recruit@terra-nail.com');
  }

  public function indexAction()
  {
    $this->setViewRendererPath('default/index/resp.index.tpl');
    $news = Tn_Helper_Rss::getList('http://feedblog.ameba.jp/rss/ameblo/nail-terra', '/nail-terra/');
    $this->view->assign('news', $news);
  }
  
  public function conceptAction()
  {
    $this->setViewRendererPath('default/index/resp.concept.tpl');
  }

  public function nailartAction()
  {
    $this->setViewRendererPath('default/index/resp.nailart.tpl');

    $shops = Tn_Orm_Main_Shop::getTable()->fetchAllByBrand(Tn_Orm_Main_Const_Shop::BRAND_BLUE);
    $this->view->assign('shops', $shops);
    
    $helper = new Tn_Helper_Orm_Search_Shop_Nailist_NailArt();
    $helper->setPerPage(30);
    
    $nailist_id = $this->_getParam('nailist');
    if($nailist_id)
    {
      $helper->setNailistId($nailist_id);
      $this->view->assign('nailist', Tn_Orm_Main_Nailist::getTable()->findByPkey($nailist_id));
    }
    
    $this->view->assign('arts', $helper->search());
    $this->view->assign('pager', $helper->getPager());
  }
  
  public function nailistAction()
  {
    $this->setViewRendererPath('default/index/resp.nailist.tpl');

    $shops = Tn_Orm_Main_Shop::getTable()->fetchAllByBrand(Tn_Orm_Main_Const_Shop::BRAND_BLUE);
    $this->view->assign('shops', $shops);
  }
  
  public function menuAction()
  {
    $this->setViewRendererPath('default/index/resp.menu.tpl');
  }
  
  public function salonAction()
  {
    $this->setViewRendererPath('default/index/resp.salon.tpl');
  }
  
  public function recruitAction()
  {
    $this->setViewRendererPath('default/index/resp.recruit.tpl');

    $form = $this->_createRecruitForm();
    $this->_helper->recruit->run($form);
  }
  
  public function recruitResultAction()
  {
    $this->setViewRendererPath('default/index/resp.recruit-result.tpl');
  }
  
  public function recruitConfirmAction()
  {
    $this->setViewRendererPath('default/index/resp.recruit-confirm.tpl');
  }
  
  /**
   * 
   * @return Sdx_Form
   */
  private function _createRecruitForm()
  {
    $form = $this->_helper->recruit->createForm();

    //license
    $elem = new Sdx_Form_Element_Group_Radio();
    $elem
    ->setName('license')
    ->setChildren(Tn_Data_RecruitForm::getLicense());
    
    $elem
    ->addValidator(new Sdx_Validate_NotEmpty());
    
    $form->setElement($elem);

    return $form;
  }

  private function _createReservationForm()
  {
    $form = $this->_helper->reservation->createForm();

    //patrs
    $elem = new Sdx_Form_Element_Group_Checkbox();
    $elem
    ->setName('parts')
    ->setChildren(array('ハンド'=>'ハンド', 'フット'=>'フット'));
    
    $elem
    ->addValidator(new Sdx_Validate_NotEmpty('ハンド・フットを選択して下さい'));
    
    $form->setElement($elem);

    //off
    $elem = new Sdx_Form_Element_Group_Checkbox();
    $elem
    ->setName('off')
    ->setChildren(array('オフ有り'=>'オフ有り'));
    
    $form->setElement($elem);

    //個室希望
    $elem = new Sdx_Form_Element_Group_Checkbox();
    $elem
    ->setName('room')
    ->setChildren(array('個室希望'=>'個室希望'));
    
    $form->setElement($elem);
    
    
    return $form;
  }
  
  public function campaignAction()
  {
    $this->setViewRendererPath('default/index/resp.campaign.tpl');
  }
  
  public function pressAction()
  {
    $this->setViewRendererPath('default/index/resp.press.tpl');

    $magazines = array(
      array(
          'img' => '/img/press/photo/jelly201312.jpg',
          'sub' => '2013年10月18日発売',
          'title' => '『JELLY12月号』トレンドネイルNOW',
          'desc' => 'ネイルサロンTerraBlueをご紹介いただきました♪'
      ),
      array(
          'img' => '/img/press/photo/SEDA201307.jpg',
          'sub' => '2013年6月7日発売',
          'title' => '『SEDA7月号』SEDA SELECTION',
      ),
      array(
          'img' => '/img/press/photo/20130517-03.jpg',
          'sub' => '2013年5月17日発売',
          'title' => '『JELLY7月号』Now on Beauty！',
      ),
      array(
          'img' => '/img/press/JELLY201303.jpg',
          'sub' => '2013年3月16日発売',
          'title' => '『JELLY5月号』2013春ネイルnews!!',
      ),
      array(
          'img' => '/img/press/serendipity.jpg',
          'sub' => '2012年11月20日発売',
          'title' => '武智 志穂『Serendipity』Go to Nail Salon',
          'desc' => '武智志穂さん行きつけネイルサロンとして、ネイルサロンTerraBlueをご紹介いただきました♪',
      ),
      array(
          'img' => '/img/press/photo01.jpg',
          'sub' => '2012年8月1日発売',
          'title' => '『盛れる!! JELLY vol,4』 セルフトレンド柄ネイル',
      ),
      array(
          'img' => '/img/press/photo/seda201207.jpg',
          'sub' => '2012年7月7日発売',
          'title' => '『SEDA 8月号』',
      ),
      array(
          'img' => '/img/press/photo/o0350043711975972938.jpg',
          'sub' => '2012年5月12日発売',
          'title' => '『Sweet 6月号』 別冊付録”Beauty Special”',
      ),
      array(
          'img' => '/img/press/photo/o0350047611929954286.jpg',
          'sub' => '2012年4月17日発売',
          'title' => '『JELLY6月号』“今、ネイルが変わった!!”',
      ),
      array(
          'img' => '/img/press/photo/t02200283_0500064311568045726.jpg',
          'sub' => '2011年10月20日発売',
          'title' => '『mina12月号』 可愛すぎる！簡単すぎる！秋ネイル',
      ),
      array(
          'img' => '/img/press/photo/t02200272_0800098811438911291.jpg',
          'sub' => '2011年8月28日発売',
          'title' => '『NAIL VENUS2011秋号』秋ネイル\'絶対に流行る\'証言LIST!!',
      ),
      array(
          'img' => '/img/press/photo/t02200311_0500070611425448024.jpg',
          'sub' => '2011年8月17日発売',
          'title' => '『JELLY10月号』Just it Beauty!!',
      ),
      array(
          'img' => '/img/press/photo/t02000254_0200025411302489386.jpg',
          'sub' => '2011年5月23日発売',
          'title' => '『Zipper7月号』 楽チン★可愛い！夏ネイル',
      ),
      array(
          'img' => '/img/press/photo/o0180023011251687732.jpg',
          'sub' => '2011年5月23日発売',
          'title' => '『Used Mix7月号』 夏ネイルは派手☆キラ☆可愛く！',
      ),
      array(
          'img' => '/img/press/photo/t02000273_0200027311169664000.jpg',
          'sub' => '2011年4月17日発売',
          'title' => '『JELLY6月号』 NAIL Fethsh！',
      ),
      array(
          'img' => '/img/press/photo/t02200311_0500070611151835522.jpg',
          'sub' => '2011年8月17日発売',
          'title' => '『SEDA5月号』 ジェル風ネイルに挑戦！',
      ),
      array(
          'img' => '/img/press/photo/used_mix2011spring.jpg',
          'sub' => '2011年3月23日発売',
          'title' => '『UsedMix5月号』 武智志穂ちゃんプライベートＮｅｗｓ！',
      ),
      array(
          'img' => '/img/press/photo/ar201103.jpg',
          'sub' => '2011年2月19日発売',
          'title' => '『ar3月号』ネイルなう。',
      ),
      array(
          'img' => '/img/press/photo/mina.jpg',
          'sub' => '2010年12月23日発売',
          'title' => '『mina2月号』 教えて！真冬のネイルＣｏｌｅｃｔｉｏｎ',
      ),
      array(
          'img' => '/img/press/photo/nylon.jpg',
          'sub' => '2010年11月28日発売',
          'title' => '『NYLON JAPAN1月号』 ビューティーアップ大作戦',
      ),
      array(
          'img' => '/img/press/photo/nicky.jpg',
          'sub' => '2010年11月29日発売',
          'title' => '『Ｎｉｃｋｙ Ｎｏ.3号』 X’masデートのための聖夜ネイルなう。',
          'desc' => 'クリスマスネイルの特集で、モデル・さこちサンからネイルサロンTerraBlueのスカルプチュアをご紹介いただきました♪',
      ),
      array(
          'img' => '/img/press/photo/jj_20101023.jpg',
          'sub' => '2010年10月23日発売',
          'title' => '『JJ12月号』 ミンクスネイルズ',
          'desc' => 'MinxNailsの特集で、ネイルサロンTerraBlueのネイルチップをご紹介いただきました♪',
      ),
      array(
          'img' => '/img/press/photo/maquia20101023.jpg',
          'sub' => '2010年10月23日発売',
          'title' => '『MAQUIA12月号』 FUN！FUN！MAQUIA美の匠',
          'desc' => 'セレブ愛用の注目アイテム、MinxNailsの記事で、ネイルサロンTerraBlueをご紹介いただきました♪',
      ),
      array(
          'img' => '/img/press/photo/seda201011.jpg',
          'sub' => '2010年10月7日発売',
          'title' => '『SEDA11月号』 おしゃれネイルSNAP',
          'desc' => '武智志穂さんのミンクスネイルを施術させていただきました！おすすめアートも掲載されています♪',
      ),
      array(
          'img' => '/img/press/photo/gisel01.jpg',
          'sub' => '2010年9月28日発売',
          'title' => '『GISELe11月号』 Celebrity BEAUTY新聞',
          'desc' => 'セレブ愛用のビューティーアイテムの特集で、ネイルサロンTerraBlueのMinxNails（ミンクスネイルズ）をご紹介いただきました！',
      ),
      array(
          'img' => '/img/press/photo/JELLY09.jpg',
          'sub' => '2010年7月12日発売',
          'title' => '『JELLY9月号』 まいち Cloｓet',
          'desc' => '高橋真依子ちゃんの連載でMinxNailsご紹介いただきました！',
      ),
      array(
          'img' => '/img/press/photo/cutie01.jpg',
          'sub' => '2010年7月12日発売',
          'title' => '『CUTiE8月号』 初心者の楽カワネイル',
          'desc' => 'ネイルデザインとセルフネイルのコツを指導させていただきました！',
      ),
      array(
          'img' => '/img/press/photo/seda01.jpg',
          'sub' => '2010年7月7日発売',
          'title' => '『SEDA8月号』 武智志穂のSmileライフ',
          'desc' => 'ネイルサロンTerraBlueに、モデルの武智志穂さんがご来店してくださいました♪',
      ),
      array(
          'img' => '/img/press/photo/used_mix.jpg',
          'sub' => '2010年12月23日発売',
          'title' => '『UsedMix 2010年Summer』',
          'desc' => 'ネイルサロンTerraBlueに、ご来店の武智志穂さんがネイルを紹介してくださいました♪',
      ),
      array(
          'img' => '/img/press/photo/popteen02.jpg',
          'sub' => '2010年4月1日発売',
          'title' => '『Popteen 5月号』 POPモデルズ私服カレンダー',
          'desc' => '太田　希望ちゃんがネイルサロンTerraBlueのスカルプネイルを紹介してくれました♪',
      ),
      array(
          'img' => '/img/press/photo/popteen01.jpg',
          'sub' => '2010年3月1日発売',
          'title' => '『Popteen 4月号』 POPモデルズ私服カレンダー',
          'desc' => '千葉 紗子ちゃんがネイルサロンTerraBlueのスカルプネイルを紹介してくれました♪',
      ),
      array(
          'img' => '/img/press/photo/honeynail.png',
          'sub' => '2009年3月29日発売',
          'title' => '『ネイル\'s Honey』 親子ネイルページ',
          'desc' => 'ネイルデザインを担当させていただきました。',
      ),
      array(
          'img' => '/img/press/photo/himenail.jpg',
          'sub' => '2009年3月12日発売',
          'title' => '『姫ネイル』',
          'desc' => 'ネイルアートチップ掲載',
      ),
    );

    $this->view->assign('magazines', $magazines);
  }
  
  public function companyAction()
  {
    $this->setViewRendererPath('default/index/resp.company.tpl');
  }
  
  public function privacyAction()
  {
    $this->setViewRendererPath('default/index/resp.privacy.tpl');
  }
  
  public function colorPartsAction()
  {
    $this->setViewRendererPath('default/index/resp.color-parts.tpl');
  }

  public function reservationAction()
  {
    $this->setViewRendererPath('default/index/resp.reservation.tpl');
    $this->_helper->reservation->run($this->_createReservationForm());
  }

  public function reservationResultAction()
  {
    $this->setViewRendererPath('default/index/resp.reservation-result.tpl');
    $this->_helper->reservation->result();
  }
  
  public function reservationConfirmAction()
  {
    $this->setViewRendererPath('default/index/resp.reservation-confirm.tpl');
    $this->_helper->reservation->confirm();
  }
}