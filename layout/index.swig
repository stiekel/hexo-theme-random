{% include 'includes/head.swig' %}
<div class="random-center hide-area">
  <div id="random-index">
    <div class="center-field">
      <img class="avatar" src="{{ url_for(config.avatar || theme.avatar) }}" width=120 height=120 onClick="openUserCard()">
    </div>
    <div class="center-field">
      <div class="title" onClick="openUserCard()">{{ config.title }}</div>
      <div class="sub-title" onClick="openUserCard()">{{ config.subtitle }}</div>
    </div>
    <hr >
    <div class="center-field">
      <ul class="index-nav-link">
        {% set menu = config.menu || theme.menu %}
        {% for key in Object.keys(menu)  %}
          {% if menu[key] != '/'  %}
            <li><a href="{{ url_for(menu[key]) }}">{{ key }}</a></li>
          {% endif %}
        {% endfor %}
      </ul>
      {% include 'includes/social-icon.swig' %}
      {% set homepageArticleCount = config.homepageArticleCount || theme.homepageArticleCount %}
      {% if homepageArticleCount > 0 %}
      <div class="index-article-container">
        <div class="index-article-list">
          {% set allPosts = site.posts.sort('date', 'desc') %}
          {% for idx, postItem in allPosts %}
            {% if idx < homepageArticleCount %}
            {% include 'includes/post-title-item.swig' %}
            {% endif %}
          {% endfor %}
        </div>
        <div class="show-all-link">
          <a href="/archives">{{__('show_all')}} >>></a>
        </div>
      </div>
      {% endif %}
    </div>
  </div>
</div>
{% include 'includes/footer.swig' %}
