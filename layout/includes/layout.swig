{% include 'head.swig' %}
<body>
{% include 'side-pagination.swig' %}
<div id="outer-container" class="hide-area">
<div id="container">
  <div id="menu-outer" class="slide-down">
    <div id="menu-inner">
      <div id="brand">
        {# <a href="{{ url_for('/') }}"> #}
        <a onClick="openUserCard()">
          <img id="avatar" src="{{config.avatar || theme.avatar}}"/>
          <div id="homelink">{{config.title}}</div>
        </a>
      </div>
      <div id="menu-list">
        <ul>
        {% set menu = config.menu || theme.menu %}
        {% for key in Object.keys(menu) %}
          {% if is_current(menu[key]) %}
            <li class="active">
          {% else %}
            <li>
          {% endif %}
            <a href="{{ url_for(menu[key]) }}">{{ key }}</a>
            {# <span>{{key}}</span> #}
          </li>
        {% endfor %}
        </ul>
      </div>
      <div id="show-menu">
        <button>Menu</button>
      </div>
    </div>
  </div>

  <div id="content-outer">
    <div id="content-inner">
      {# {% autoescape false %}{{ body }}{% endautoescape %} #}
      {% block body %}{% endblock %}
      {% if page.comments && (config.uyan_id || theme.uyan_id) %}
      <div id="uyan_frame"></div>
      {% endif %}
      {% if page.comments && (config.disqus_shortname || theme.disqus_shortname) %}
      <div id="disqus_thread"></div>
      {% endif %}
    </div>
  </div>

  <div id="bottom-outer">
    <div id="bottom-inner">
      Site by {{ config.author }} using
      <a href="http://hexo.io">Hexo</a> & <a href="https://github.com/stiekel/hexo-theme-random">Random</a>
      <br>
      {% if config.since %}
        &copy;
        {% set thisYear = date(Date.now(), 'YYYY') %}

        {{config.since}}
        {% if thisYear != config.since %}
         - {{ date(Date.now(), 'YYYY') }}
        {% endif %}
      {% endif %}
    </div>
  </div>
</div>

</div>
{% if page.comments && (config.disqus_shortname || theme.disqus_shortname) %}
  {% include 'disqus.swig' %}
{% endif %}
{% if page.comments && (config.uyan_id || theme.uyan_id) %}
  {% include 'uyan.swig' %}
{% endif %}
{% include 'footer.swig' %}
