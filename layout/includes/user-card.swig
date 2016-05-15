<div id="user-card">
  <div class="center-field">
    <img class="avatar" src="{{ config.avatar || theme.avatar }}">
    <p id="description">{{ site.description || theme.description }}</p>
    {% include 'social-icon.swig' %}
  </div>
</div>
