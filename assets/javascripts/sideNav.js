$(function() {
  $(".top-nav__item--club-sandwich").click(function(e) {
    e.preventDefault();
    $('html,body').scrollTop(0);
    $(".top-nav__items, .main, body, .top-nav__item--close-nav, .top-nav__item--club-sandwich").addClass("mobile-nav-slides-out");
  });

  $(".top-nav__item--close-nav, .main").click(function() {
    $(".top-nav__items, .main, body, .top-nav__item--close-nav, .top-nav__item--club-sandwich").removeClass("mobile-nav-slides-out");
  });
});
