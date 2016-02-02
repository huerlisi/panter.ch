$(document).ready(function() {
  var elements = $(".js-fade-in");
  elements.each(function() {
    var element = $(this);
    $(element).addClass('js-fade-in-hide');

    $(window).scroll(function() {
      var elementTopToPageTop = $(element).offset().top;
      var windowTopToPageTop = $(window).scrollTop();
      var windowInnerHeight = window.innerHeight;
      var elementTopToWindowTop = elementTopToPageTop - windowTopToPageTop;
      var elementTopToWindowBottom = windowInnerHeight - elementTopToWindowTop;
      var distanceFromBottomToAppear = 300;

      if(elementTopToWindowBottom > distanceFromBottomToAppear) {
        $(element).addClass('js-fade-in-show');
      }
      else if(elementTopToWindowBottom < 0) {
        $(element).removeClass('js-fade-in-show');
        $(element).addClass('js-fade-in-hide');
      }
    });
  });
});
