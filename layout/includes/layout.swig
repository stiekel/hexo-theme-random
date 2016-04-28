{% include 'head.swig' %}
<body>
<div id="container">
  <div id="menu-outer">
    <div id="menu-inner">
      {% for key in Object.keys(theme.menu) %}
        <a href="{{ theme.menu[key] }}">{{ key }}</a>
      {% endfor %}
    </div>
  </div>

  <div id="content-outer">
    <div id="content-inner">
      {# {% autoescape false %}{{ body }}{% endautoescape %} #}
      {% block body %}{% endblock %}
    </div>
  </div>

  <div id="bottom-outer">
    <div id="bottom-inner">
      Site by {{ config.author }} using
      <a href="http://hexo.io">hexo blog framework</a>.
      <br>
      <a href="{{ config.root }}">Home</a>
    </div>
  </div>
</div>

{% include 'footer.swig' %}
