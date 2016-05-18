{% include 'includes/head.swig' %}
<div class="random-center hide-area">
  <div id="random-index">
    <div class="center-field">
      <img class="avatar" src="http://7te9fe.com1.z0.glb.clouddn.com/default_avatar.jpg" width=120 height=120 onClick="openUserCard()">
    </div>
    <div class="center-field">
      <div class="title" onClick="openUserCard()">{{ config.title }}</div>
      <div class="sub-title" onClick="openUserCard()">{{ config.subtitle }}</div>
    </div>
    <hr >
    <div class="center-field">
      <ul class="index-nav-link">
        {% for key in Object.keys(theme.menu)  %}
          {% if theme.menu[key] != '/'  %}
            <li><a href="{{ url_for(theme.menu[key]) }}">{{ key }}</a></li>
          {% endif %}
        {% endfor %}
      </ul>
      {% include 'includes/social-icon.swig' %}
    </div>
  </div>
</div>
{% include 'includes/footer.swig' %}
