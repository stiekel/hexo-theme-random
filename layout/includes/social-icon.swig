<ul class="social-icon">
  {% set socialConfig = config.social || theme.social %}
  {% for i in Object.keys( socialConfig ) %}
    <li>
      <a href="{{ socialConfig[i] }}">
        {% if socialConfig[i]|replace('douban.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont douban">&#xe609;</i>
        {% elif socialConfig[i]|replace('twitter.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont twitter">&#xe600;</i>
        {% elif socialConfig[i]|replace('linkedin.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont linkedin">&#xe601;</i>
        {% elif socialConfig[i]|replace('weibo.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont weibo">&#xe602;</i>
        {% elif socialConfig[i]|replace('plus.google.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont google-plus">&#xe603;</i>
        {% elif socialConfig[i]|replace('facebook.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont facebook">&#xe604;</i>
        {% elif socialConfig[i]|replace('dribbble.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont dribbble">&#xe605;</i>
        {% elif socialConfig[i]|replace('github.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont github">&#xe606;</i>
        {% elif socialConfig[i]|replace('coding.net', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont coding">&#xe607;</i>
        {% elif socialConfig[i]|replace('npmjs.org', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont npmjs">&#xe608;</i>
        {% elif socialConfig[i]|replace('youtube.com', '', 'g')  !== socialConfig[i] %}
          <i class="icon iconfont youtube">&#xe60a;</i>
        {% else %}
          {{i}}
        {% endif %}
      </a>
    </li>
  {% endfor %}
</ul>