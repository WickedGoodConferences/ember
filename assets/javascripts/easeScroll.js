/*
 EaseScroll
*/
$(function() {
  var $root = $('html, body');
  $('.intro__scroll-down').click(function() {
      $root.animate({
          scrollTop: $( $.attr(this, 'href') ).offset().top
      }, 300);
      return false;
  });
});
