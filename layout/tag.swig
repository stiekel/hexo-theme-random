{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag">
    <h1>{{ page.tag }}</h1>
    {% set allPosts = site.posts.sort('date', 'desc') %}
    {% for postItem in allPosts %}
      {% set isShow = false %}
      {% for tag in postItem.tags %}
        {% if tag.name === page.tag %}
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
