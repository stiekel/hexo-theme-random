{% extends 'includes/layout.swig' %}

{% block body %}
  {% include 'math/index.swig' %}
  <article id="post">
    <h1>{{ page.title || __('without_title') }}</h1>
    <p class="page-title-sub">
      <span id = "post-title-date">{{ __('created_at') }} {{ date(page.date) }}</span>
      {% if page.date !== page.updated %}
        <span id = "post-title-updated">{{ __('updated_at') }} {{ date(page.updated) }}</span>
      {% endif %}
      {% if page.categories.length %}
      <span id = "post-title-categories">{{ __('category_title') }}
      {% set i = 0 %}
      {% for cat in page.categories %}
        {% if i !== 0 %}
          {{'/'}}
        {% endif %}
        {% set i = i + 1 %}
        <a href="{{ url_for(cat.path) }}">{{ cat.name }}</a>
      {% endfor %}
      </span>
      {% endif %}
      {% if page.tags.length %}
        <span id = "post-title-tags">
          {{ __('tag_title') }}
          {% set i = 0 %}
          {% for tag in page.tags %}
            {% if i !== 0 %}
              {{'/'}}
            {% endif %}
            {% set i = i + 1 %}
            <a href="{{ url_for(tag.path) }}">{{ tag.name }}</a>
          {% endfor %}
        </span>
      {% endif %}
      <span id="/{{ page.path }}" class="leancloud-visitors" data-flag-title="{{ page.title }}">
        <i class="leancloud-visitors-count"></i>
        <em class="post-meta-item-text"> views </em>
      </span>
    </p>
    {% if page.photos.length %}
      {% include 'includes/gallery.swig' %}
    {% endif %}
    {% autoescape false %}{{ page.content }}{% endautoescape %}
  </article>
  {% include 'includes/toc.swig' %}
  {% if page.comments && (theme.valine.enable) %}
    {% include 'includes/valine.swig' %}
  {% endif %}
  {% include 'includes/pagination.swig' %}
  {% include 'includes/jiathis.swig' %}
{% endblock %}
