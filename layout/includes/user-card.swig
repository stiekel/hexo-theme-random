<div id="user-card">
  <div class="center-field">
    <img class="avatar" src="{{ config.avatar || theme.avatar }}">
    <p id="description">{{ site.description || theme.description }}</p>
    <ul>
    {% for i in Object.keys( config.social ) %}
      <li><a href="{{config.social[i]}}">{{i}}</a></li>
    {% endfor %}
    </ul>
  </div>
</div>
