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

  // hide / show content button
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

  // code highlight
  hljs.configure({useBR: true});
  hljs.initHighlightingOnLoad();
  $(".highlight").each(function(i, block) {
    console.log('i:', i, 'block:', block);
    hljs.highlightBlock(block);
  });

  $("#show-menu").on('click', function(){
    if( $('#menu-list').is(":visible") )
      $("#menu-list").hide();
    else
      $("#menu-list").show();
  });


  // nav hide and show
  var isScroll = false;
  var lastScrollTop = 0;

  $(window).scroll(function(e){
    isScroll = true;
  });

  $(document).bind('touchmove', function(e){
    isScroll = true;
  });

  setInterval(function(){
    if(isScroll) {
      afterScroll();
      isScroll = false;
    }
  }, 200);

  function afterScroll(){
    var currentST = $(this).scrollTop();

    if(Math.abs(lastScrollTop - currentST) <= 5) {
      return;
    }

    if(currentST > lastScrollTop && currentST > $("#menu-outer").outerHeight()) {
      if($('#menu-list').is(":visible")) {
        $("#menu-list").hide();
      }
      $("#menu-outer").removeClass('slide-down').addClass('slide-up');
    } else if(currentST + $(window).height() < $(document).height()) {
      $("#menu-outer").removeClass('slide-up').addClass('slide-down');
    }

    lastScrollTop = currentST;
  }
});
