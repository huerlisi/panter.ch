$(document).ready(function() {
  parallax();
});

$(window).scroll(function() {
  parallax();
});

function parallax(){
  $(".js-parallax-window").each(function() {
    var plxWindow = $(this);
    var plxBackground = plxWindow.find(".js-parallax-background");

    var plxWindowTopToPageTop = $(plxWindow).offset().top;
    var windowTopToPageTop = $(window).scrollTop();
    var plxWindowTopToWindowTop = plxWindowTopToPageTop - windowTopToPageTop;

    var plxSpeed = 0.65;

    plxBackground.css('top', - (plxWindowTopToWindowTop * plxSpeed) + 'px');
    // plxBackground.animate({top: - (plxWindowTopToWindowTop * plxSpeed) + 'px'}, 0.001);
  });
}
