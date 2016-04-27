{% extends 'includes/layout.swig' %}

{% block body %}
  <article id="post">
    <h1>{{ page.title }}</h1>
    {% autoescape false %}{{ page.content }}{% endautoescape %}
  </article>

  {% include 'includes/pagination.swig' %}
{% endblock %}
