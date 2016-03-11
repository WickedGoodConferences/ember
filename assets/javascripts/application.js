#= require jquery.min.js
#= require easeScroll.js
#= require mobileNav.js

$(function() {
  var words = ['Emberists', 'Emberiños', 'Embereñas'];
  $('.people-who-do-ember').text(words[Math.floor(Math.random()*words.length)]);
});
