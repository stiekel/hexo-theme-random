{% include 'includes/head.swig' %}
<div class="random-center">
  <div id="random-index">
    <div class="center-field">
      <img class="avatar" src="http://7te9fe.com1.z0.glb.clouddn.com/default_avatar.jpg" width=120 height=120>
    </div>
    <div class="center-field">
      <div class="title">{{ config.title }}</div>
      <div class="sub-title">{{ config.subtitle }}</div>
    </div>
    <hr >
    <div class="center-field">
      <ul>
        {% for key in Object.keys(theme.menu)  %}
          {% if theme.menu[key] != '/'  %}
            <li><a href="{{ theme.menu[key] }}">
              {% if key.toLowerCase() === 'archives' %}
                {{__('archive_title') }}
              {% elseif key.toLowerCase() === 'tags' %}
                {{__('tag_title') }}
              {% elseif key.toLowerCase() === 'categories' %}
                {{__('category_title') }}
              {% elseif key.toLowerCase() === 'about' %}
                {{__('about_title') }}
              {% elseif key.toLowerCase() === 'rss' %}
                {{__('rss_title') }}
              {% else %}
                {{ key }}
              {% endif %}
            </a></li>
          {% endif %}
        {% endfor %}
      </ul>
    </div>
  </div>
</div>
{% include 'includes/footer.swig' %}
