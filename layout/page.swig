{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="page">
    {% set page_title = page.title %}
    {% if 'categories' === page.type %}
      <h1 class="">{{ page_title || __('category_title') }}</h1>
      {{ list_categories({ show_count: false }) }}
    {% elif 'tags' === page.type %}
      <h1 class="">{{ page_title || __('tag_title') }}</h1>
      <div class="tag-cloud-tags">
        {{ tagcloud({min_font: 12, max_font: 40, amount: 200, color: true, start_color: '#ccc', end_color: '#666'}) }}
      </div>
    {% else %}
    {% autoescape false %}{{page.content }}{% endautoescape %}
      <h1 class="">{{ page_title }}</h1>
    {% endif %}
  </article>

  {% include 'includes/pagination.swig' %}
{% endblock %}
