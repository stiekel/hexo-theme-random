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

  var hideAll = false;
  $("#btn-view").on('click', function(){
    if(hideAll) {
      $(".hide-area").show();
      $("#btn-view").html('Hide');
    } else {
      $(".hide-area").hide();
      $("#btn-view").html('Show');
    }
    hideAll = !hideAll;
  });
});