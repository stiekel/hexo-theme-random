<div class="post-title-item">
  {% set postTitle = postItem.title || trim(strip_html(postItem.content))  %}
  <a href="{{ config.root }}{{ postItem.path }}">
  {% if postTitle.length < 80 %}
    {{ postTitle }}
  {% else %}
    {{ truncate( postTitle, {length: 80}) }}
  {% endif %}
  </a>
  <p class="page-title-sub">
    <span id = "post-title-date">{{ date(postItem.date, 'M-D') }}</span>
    {% if postItem.categories.length %}
    <span id = "post-title-categories">{{ __('category_title') }}
    {% set i = 0 %}
    {% for cat in postItem.categories %}
      {% if i !== 0 %}
        {{'/'}}
      {% endif %}
      {% set i = i + 1 %}
      <a href="{{ url_for(cat.path) }}">{{ cat.name }}</a>
    {% endfor %}
    </span>
    {% endif %}
    {% if postItem.tags.length %}
    <span id = "post-title-tags">
    {{ __('tag_title') }}
    {% set i = 0 %}
    {% for tag in postItem.tags %}
      {% if i !== 0 %}
        {{'/'}}
      {% endif %}
      {% set i = i + 1 %}
      <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
    {% endfor %}
    </span>
    {% endif %}
    {% if postItem.photos %}
      <br>
      {% set i = 0 %}
      {% for photo in postItem.photos %}
        {% set i = i + 1 %}
        {% if i <= 3 %}
          <a class="fancybox-thumb" rel="fancybox-thumb" href="{{photo}}">
            <img src="{{photo}}" />
          </a>
        {% endif %}
      {% endfor %}
    {% endif %}
  </p>
  
</div>