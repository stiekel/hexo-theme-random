$(function(){
  var isMobile = false;
  // vegas config
  // add slide image
  var slides = [];
  if(backgroundImages && backgroundImages.length > 0) {
    backgroundImages.forEach(function(img){
      slides.push({
        src: img.replace('__width__', window.screen.availWidth).replace('__height__', window.screen.availHeight)
      });
    });
  }
  // slides = [];
  if(slides.length === 0) {
    var endWith = '';
    var greyscale = '';
    if(unsplashConfig) {
      if(unsplashConfig.gravity) {
        endWith = '&gravity=' + unsplashConfig.gravity;
      }
      if(unsplashConfig.blur) {
        endWith += '&blur=1';
      }
      if(unsplashConfig.greyscale) {
        greyscale = '/g';
      }
    }

    for(var i = 1; i <= 10; i++) {
      slides.push({
        src: ['https://unsplash.it', greyscale, '/', window.screen.availWidth, '/',window.screen.availHeight, '?random&t=', i, endWith].join('')
      });
    }
  }
  // check vegas config
  if('object' !== typeof vegasConfig) {
    vegasConfig = {
      shuffle: true
    };
  }
  vegasConfig.slides = slides;
  $('body').vegas(vegasConfig);

  // hide / show content button
  $("#btn-view").on('click', showHideToggle);

  // code highlight
  hljs.configure({useBR: true});
  hljs.initHighlightingOnLoad();
  $(".highlight").each(function(i, block) {
    hljs.highlightBlock(block);
  });

  $("#show-menu").on('click', function(){
    if(!isMobile) return;
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
    isMobile = $(window).width() < 768;
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
      if($('#menu-list').is(":visible") && isMobile) {
        $("#menu-list").hide();
      }
      $("#menu-outer").removeClass('slide-down').addClass('slide-up');
    } else if(currentST + $(window).height() < $(document).height()) {
      $("#menu-outer").removeClass('slide-up').addClass('slide-down');
    }

    lastScrollTop = currentST;
  }
});

var hideAll = false;
function showHideToggle() {
  if(hideAll) {
    $(".hide-area").show();
    $("#btn-view").html('Hide');
  } else {
    $(".hide-area").hide();
    $("#btn-view").html('Show');
  }
  hideAll = !hideAll;
}

// open user card
function openUserCard() {
  /*$("#user-card").modal({
    showClose: false
  });*/
  showHideToggle();
  $.fancybox({
    type: 'html',
    autoSize: true,
    maxWidth: 400,
    autoCenter: true,
    content: $("#user-card"),
    closeBtn: false,
    afterClose: showHideToggle
  });
}
