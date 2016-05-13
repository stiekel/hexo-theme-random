{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="category">
    <h1>{{ page.category }}</h1>
    {% for postItem in site.posts.toArray() %}
      {% set isShow = false %}
      {% for cat in postItem.categories %}
        {% if cat.name === page.category %}
          {% set isShow = true %}
        {% endif %}
      {% endfor %}
      {% if isShow %}
      {% include 'includes/post-title-item.swig' %}
      {% endif %}
    {% endfor %}
  </div>

  {# {% include 'includes/pagination.swig' %} #}
{% endblock %}
