
<nav id="pagination">
  {% if page.prev_link %}
    <a href="{{ url_for(page.prev_link) }}" class="prev">&larr; Prev</a>
  {% elif page.prev && page.prev.path %}
    <a href="<%=url_for(page.prev.path)%>" class="prev">&larr; Prev</a>
  {% endif %}

  {% if page.current && page.total %}
    <span class="page-number">
      Page {{ page.current }} of {{ page.total }}
    </span>
  {% endif %}

  {% if page.next_link %}
    <a href="{{ url_for(page.next_link) }}" class="next">Next &rarr;</a>
  {% elif page.next && page.next.path %}
    <a href="{{ url_for(page.next.path) }}" class="next">Next &rarr;</a>
  {% endif %}
</nav>
