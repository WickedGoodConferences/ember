$(function() {
  $(".nav__icon").click(function(e) {
    e.preventDefault();
    $("body").toggleClass("mobile-nav-is-showing");
  });
});
