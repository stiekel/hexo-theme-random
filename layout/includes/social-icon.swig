<ul class="social-icon">
  {% for i in Object.keys( config.social ) %}
    <li>
      <a href="{{config.social[i]}}">
        {% if config.social[i]|replace('douban.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont douban">&#xe609;</i>
        {% elif config.social[i]|replace('twitter.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont twitter">&#xe600;</i>
        {% elif config.social[i]|replace('linkedin.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont linkedin">&#xe601;</i>
        {% elif config.social[i]|replace('weibo.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont weibo">&#xe602;</i>
        {% elif config.social[i]|replace('plus.google.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont google-plus">&#xe603;</i>
        {% elif config.social[i]|replace('facebook.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont facebook">&#xe604;</i>
        {% elif config.social[i]|replace('dribbble.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont dribbble">&#xe605;</i>
        {% elif config.social[i]|replace('github.com', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont github">&#xe606;</i>
        {% elif config.social[i]|replace('coding.net', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont coding">&#xe607;</i>
        {% elif config.social[i]|replace('npmjs.org', '', 'g')  !== config.social[i] %}
          <i class="icon iconfont npmjs">&#xe608;</i>
        {% else %}
          {{i}}
        {% endif %}
      </a>
    </li>
  {% endfor %}
</ul>