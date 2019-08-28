{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="page">
    {% set page_title = page.title %}
    {% if 'categories' === page.type %}
      <h1 class="center-title">{{ page_title || __('category_title') }}</h1>
      {{ list_categories() }}
    {% elif 'tags' === page.type %}
      <h1 class="center-title">{{ page_title || __('tag_title') }}</h1>
      <div class="tag-cloud-tags">
        {{ tagcloud({min_font: 16, max_font: 32, amount: 200, color: true, start_color: '#999', end_color: '#444'}) }}
      </div>
    {% else %}
      <h1 class="">{{ page_title }}</h1>
      {% if page.photos.length %}
        {% include 'includes/gallery.swig' %}
      {% endif %}
      {% autoescape false %}{{page.content }}{% endautoescape %}
      {% if page.comments && (theme.valine.enable) %}
        {% include 'includes/valine.swig' %}
      {% endif %}
    {% endif %}
  </article>

  {% include 'includes/pagination.swig' %}
  {% include 'includes/jiathis.swig' %}
{% endblock %}
