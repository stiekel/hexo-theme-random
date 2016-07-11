<!-- JiaThis Button BEGIN -->
{% if config.jiaThis_uid || theme.jiaThis_uid %}
  <script type="text/javascript">
    var jiathis_config = {{ JSON.stringify(config.jiathisConfig || theme.jiathisConfig) }};
  </script>
  <script type="text/javascript" src="//v3.jiathis.com/code/jiathis_r.js?uid={{ config.jiaThis_uid || theme.jiaThis_uid }}&btn=r2.gif&move=0" charset="utf-8"></script>
{% endif %}
<!-- JiaThis Button END -->
