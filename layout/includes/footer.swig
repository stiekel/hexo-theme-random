{% include 'user-card.swig' %}
<div id="btn-view">Hide</div>
{% if config.baidu_analytics || theme.baidu_analytics || config.baidu_tongji || theme.baidu_tongji %}
  {% include 'baidu-tongji.swig' %}
{% endif %}
{% if config.google_analytics || theme.google_analytics %}
  {% include 'google-analytics.swig' %}
{% endif %}

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}
{% if theme.fancybox || config.fancybox %}
  <script>
  // fancybox
  $('#post').each(function(i){
    $(this).find('img').each(function(){
      if ($(this).parent().hasClass('fancybox')) return;
      var alt = this.alt || this.title;
      if (alt) $(this).after('<span class="caption">' + alt + '</span>');
      $(this).wrap('<a href="' + this.src + '" title="' + alt + '" class="fancybox"></a>');
    });
    $(this).find('.fancybox').each(function(){
      $(this).attr('rel', 'post' + i);
    });
  });
  if($.fancybox){
    $('.fancybox').fancybox();
  }
  </script>
{% endif %}
</body>
</html>
