<div id="btn-view">Hide</div>
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
