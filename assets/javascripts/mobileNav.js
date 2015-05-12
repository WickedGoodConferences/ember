$(function() {
  $(".nav__icon").click(function(e) {
    e.preventDefault();
    $("body").toggleClass("mobile-nav-is-showing");
  });

  $("a.nav__link").click(function(e) {
    $("body").removeClass("mobile-nav-is-showing");
  });
});
