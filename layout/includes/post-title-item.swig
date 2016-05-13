<div class="post-title-item">
  <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
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
  </p>
  
</div>