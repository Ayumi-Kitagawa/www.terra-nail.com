$(function(){
    $("#nailist_select").on('change', function(){
        var value = $(this).val();
        if(value){
            location.href = '/nailart?nailist='+value;
        } else {
            location.href = '/nailart';
        }
    });

    var nailImages = $("#nailImages li");

    nailImages.attachHeight({
        ratio: 0.82
    });

    var ps = $("#nailImages .image a").photoSwipe({
        enableMouseWheel: false ,
        enableKeyboard: false,
        loop: false,
        captionAndToolbarAutoHideDelay: 0,
        getToolbar: function(){
            return '<div class="ps-toolbar-close"><div class="btn_icon"></div></div>'+
            '<div class="ps-toolbar-play"><div class="btn_icon"></div></div>'+
            '<div class="ps-toolbar-previous"><div class="btn_icon"></div></div>'+
            '<div class="ps-toolbar-next"><div class="btn_icon"></div></div>'+
            '<div class="page"><div class="btn_icon"></div></div>'
            ;
        }
    });

    var PhotoSwipe = window.Code.PhotoSwipe;
    ps.addEventHandler(PhotoSwipe.EventTypes.onToolbarTap, function(e){
        if (e.toolbarAction === PhotoSwipe.Toolbar.ToolbarAction.none){
            var button = $(e.tapTarget).closest('.page');
            if(!button.hasClass('disable')){
                if(button.hasClass('next')){
                    location.href = $('.pager .next a').attr('href');
                } else {
                    location.href = $('.pager .prev a').attr('href');
                }
            }
        }
    });

    var hasPrevPage = !$('.pager .prev .disable_link').length;
    var hasNextPage = !$('.pager .next .disable_link').length;

    ps.addEventHandler(PhotoSwipe.EventTypes.onDisplayImage, function(e){
        var image = ps.getCurrentImage();
        var li = $(image.refObj).closest('li.art');
        var toolbar = $(ps.toolbar.toolbarEl);
        var pageBtn = toolbar.find('.page');
        pageBtn.removeClass('none prev next');
        pageBtn.addClass('disable');

        if(li.hasClass('is_first')){
            if(hasPrevPage) pageBtn.removeClass('disable');
            pageBtn.addClass('prev');
        } else if(li.hasClass('is_last')) {
            if(hasNextPage) pageBtn.removeClass('disable');
            pageBtn.addClass('next');
        } else {
            pageBtn.addClass('none');
        }
    });

    ps.addEventHandler(PhotoSwipe.EventTypes.onHide, function(e){
        var li = $(ps.getCurrentImage().refObj).closest('li.art');
        setTimeout(function(){
            nailImages.data('attachHeight')();
            $.scrollTo(li);
        }, 100);
    });

    window.onorientationchange = function() {
        resetNextPage();
    };
});