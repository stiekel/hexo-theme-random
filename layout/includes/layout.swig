
{% set pageTitle = page.title || config.subtitle || '' %}

{% if is_archive() %}
  {% set pageTitle = 'Archives' %}
{% endif %}

{% if is_tag() %}
  {% set pageTitle = 'Tag: ' + page.tag %}
{% endif %}

{% if is_category() %}
  {% set pageTitle = 'Category: ' + page.category %}
{% endif %}

{% if is_month() %}
  {% set pageTitle = pageTitle + ': ' + page.month + '/' + page.year %}
{% endif %}

{% if is_year() %}
  {% set pageTitle = pageTitle + ': ' + page.year %}
{% endif %}

{% set pageTitle = pageTitle + ' [ ' + config.title + ' ]' %}

<!doctype html>
<html lang="{{ config.language }}">
<head>
  <meta charset="UTF-8">
  <title>{{ pageTitle }}</title>
  {% if theme.stylesheets !== undefined && theme.stylesheets.length > 0 %}
    {# stylesheet list from config.yml #}
    {% for url in theme.stylesheets %}
      <link rel="stylesheet" href="{{ url }}">
    {% endfor %}
  {% endif %}
</head>
<body>

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

{% if theme.scripts !== undefined && theme.scripts.length > 0 %}
  {# scripts list from config.yml #}
  {% for url in theme.scripts %}
    <script src="{{ url }}"></script>
  {% endfor %}
{% endif %}

</body>
</html>
