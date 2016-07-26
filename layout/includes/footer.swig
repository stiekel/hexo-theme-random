{% include 'user-card.swig' %}
{% if config.hideButtonVisibility || theme.hideButtonVisibility %}
<div id="btn-view">Hide</div>
{% endif %}
<script>
// is trigger analytics / tongji script
var isIgnoreHost = false;

if(window && window.location && window.location.host) {
  isIgnoreHost = {{ JSON.stringify(config.theme.ignoreHostList || theme.ignoreHostList) }}.some(function(address){
    return 0 === window.location.host.indexOf(address);
  });
}

var isTriggerAnalytics = !( {{ JSON.stringify(config.isIgnoreSpecialHostVisitor || theme.isIgnoreSpecialHostVisitor) }} && isIgnoreHost );

</script>
{% if config.baidu_analytics || theme.baidu_analytics || config.baidu_tongji || theme.baidu_tongji %}
  {% include 'baidu-tongji.swig' %}
{% endif %}
{% if config.google_analytics || theme.google_analytics %}
  {% include 'google-analytics.swig' %}
{% endif %}

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url_for(url) }}"></script>
  {% endfor %}
{% endif %}
<script>
{% if theme.fancybox || config.fancybox %}
  // fancybox
  var backgroundImages = [];
  {% if theme.backgroundImages %}
    {% for i in theme.backgroundImages %}
      backgroundImages.push('{{ i }}');
    {% endfor %}
  {% endif %}
  $('#post').each(function(i){
    $(this).find('img').each(function(){
      if ($(this).parent().hasClass('fancybox') || $(this).parent().hasClass('fancybox-thumb')) return;
      var alt = this.alt || this.title;
      if (alt) $(this).after('<span class="caption">' + alt + '</span>');
      $(this).wrap('<a href="' + this.src + '" title="' + alt + '" class="fancybox"></a>');
    });
    $(this).find('.fancybox').each(function(){
      $(this).attr('rel', 'post' + i);
    });
  });
  $(".fancybox").fancybox();
{% endif %}
var vegasConfig = {{ JSON.stringify(theme.vegasConfig) }};
var unsplashConfig = {{ JSON.stringify(theme.unsplashConfig) }};
// is show background images
var turnoffBackgroundImage = false;
{% if is_home() && (theme.turnoffBackgroundImage.index || config.turnoffBackgroundImage.index) %}
  turnoffBackgroundImage = true;
{% endif %}
{% if (is_archive() || is_year() || is_month() || is_category() || is_tag()) && (theme.turnoffBackgroundImage.post_list || config.turnoffBackgroundImage.post_list) %}
  turnoffBackgroundImage = true;
{% endif %}
{% if is_post() && (theme.turnoffBackgroundImage.post || config.turnoffBackgroundImage.post) %}
  turnoffBackgroundImage = true;
{% endif %}

var backgroundColor = {{ JSON.stringify(config.backgroundColor || theme.backgroundColor )}};

$(".fancybox-thumb").fancybox({
  prevEffect: 'none',
  nextEffect: 'none',
  helpers: {
    title: {
      type: 'outside'
    },
    thumbs: {
      width: 50,
      height: 50
    }
  }
});

// show video with plyr
$(".video-container iframe").each(function(i){
  var url = $(this).attr('src');
  var id = url.split('/').pop();
  var plyrContainer = document.createElement('div');
  plyrContainer.className = 'plyr';
  var plyrElement = document.createElement('div');
  plyrElement.dataset.videoId = id;
  switch(true) {
    case url.search('youtube.com') >= 0:
      plyrElement.dataset.type = 'youtube';
      break;
    case url.search('vimeo.com') >= 0:
      plyrElement.dataset.type = 'vimeo';
      break;
    default:
      return;
  };
  plyrContainer.appendChild(plyrElement);
  $(this).parent().html(plyrContainer);
});
plyr.setup('.plyr', {iconUrl: '{{ url_for("/css/sprite.svg") }}'});
</script>
</body>
</html>
