$(document).ready(function() {
  $('a.menu-link').click(function() {
    $('#menu').toggleClass('active');
    return false;
  });

  $('.navbar li a').click(function() {
    $('#menu').removeClass('active');
  });

  $('.navbar a.go-to-top').click(function() {
    $('#menu').removeClass('active');
  });

  $('.welcome').css('background-position', '-40000px')
});
