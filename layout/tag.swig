{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag">
    <h1>{{ page.tag }}</h1>
    {% for postItem in page.posts.toArray() %}
      {% include 'includes/post-title-item.swig' %}
    {% endfor %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}
