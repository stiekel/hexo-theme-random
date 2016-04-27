{% extends 'includes/layout.swig' %}

{% block body %}
  <div id="tag">
    <h1>{{ page.tag }}</h1>
    {% for postItem in page.posts.toArray() %}
      <div class="tag-item">
        {% if article.link %}
          <a href="{{ url_for(article.link) }}" target="_blank">
            {{ article.title || 'No Title' }}
          </a>
        {% else %}
          <a href="{{ url_for(article.link) }}">
            {{ article.title || 'No Title' }}
          </a>
        {% endif %}

        <time datetime="{{ date_xml(article.date) }}">
          {{ date(article.date) }}
        </time>
      </div>
    {% endfor %}
  </div>

  {% include 'includes/pagination.swig' %}
{% endblock %}
