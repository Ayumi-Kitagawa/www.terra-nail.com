<?php
class TrackController extends Sdx_Controller_Action_Http
{
  public function headerAction()
  {
    $this->_disableViewRenderer();
    $resp = $this->getResponse();

    if(empty($_SERVER["HTTP_IF_NONE_MATCH"]))
    {
      $etag = sha1(uniqid(mt_rand(10000, 999999), true));
      $script = <<<EOF
$(function(){
  $('body').data('foo', '{$etag}');
});
EOF;
      $resp
        ->setHeader('Cache-Control', 'private, must-revalidate, proxy-revalidate, max-age=0')
        ->setHeader('Pragma', 'cache')
        ->setHeader('Etag', $etag)
        ->setHeader('Content-type', 'text/javascript; charset=utf-8')
        ->setHeader('Content-length', strlen($script))
        ->setBody($script);
    }
    else
    {
      $etag = $_SERVER["HTTP_IF_NONE_MATCH"];
      $resp->setHttpResponseCode(304);
    }


    $log = new Sdx_Log_Stream('etag.log');
    $log->log(sprintf('%s %s', $_SERVER['REMOTE_ADDR'], $etag));
  }
}