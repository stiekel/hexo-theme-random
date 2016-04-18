$(function(){
  // vegas config
  // add slide image
  var slides = [];
  for(var i = 1; i <= 10; i++) {
    slides.push({
      src: 'https://unsplash.it/' + window.screen.availWidth + '/' + window.screen.availHeight + '/?random&t=' + i
    });
  }
  $('body').vegas({
    slides: slides
  });
});