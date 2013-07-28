$(function(){
    document.body.style.webkitTouchCallout='none';
    $('.keyBox').bind('click', function(){
        var el = $('.keyBoxFoot',this);
        var sty = el.attr('style');
        sty != null && sty != '' && sty.indexOf('none')>-1 ? el.attr('style','display:block') : el.attr('style','display:none');
    });
});
