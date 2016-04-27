
{% if site.posts.length > 0 %}
  <div id="recent-posts">
    <h1>All Posts</h1>
    {% for postItem in site.posts.toArray() %}
      <div class="recent-post-item">
        <a href="{{ config.root }}{{ postItem.path }}">{{ postItem.title }}</a>
        {% if postItem.date %}
          <time datetime="{{ postItem.date.toJSON() }}">
            {{ date(postItem.date) }}
          </time>
        {% endif %}
      </div>
    {% endfor %}
  </div>
{% endif %}
