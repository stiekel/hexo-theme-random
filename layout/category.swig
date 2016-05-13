{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="category">
    <h1>{{ page.category }}</h1>
    {% for postItem in page.posts.toArray() %}
      {% include 'includes/post-title-item.swig' %}
    {% endfor %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}
