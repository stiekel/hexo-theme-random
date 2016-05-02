<div id="btn-view">Hide</div>
{% if config.baidu_analytics || theme.baidu_analytics || config.baidu_tongji || theme.baidu_tongji %}
  {% include 'baidu-tongji.swig' %}
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
  $("a").fancybox({
    helpers:{
      title: { type: 'float'}
    }
  });
  </script>
{% endif %}
</body>
</html>
