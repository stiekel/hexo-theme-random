# hexo-theme-random 中文文档

## Demo

* [Demo on Openshift](http://random-stiekel.rhcloud.com/)
* [不可能不确定](http://chensd.com)

如果你：

* 喜欢用大图做背景
* 不喜欢文章摘要
* 不喜欢在文章列表中翻页

那这款主题很可能适合你。

## 屏幕截图

![hexo theme random screenshot homepage ](http://i.imgur.com/6N7QVHp.png)
![hexo theme random screenshot archive ](http://i.imgur.com/bfcRUbO.png)
![hexo theme random screenshot detail ](http://i.imgur.com/nYiNCha.png)
![hexo theme random screenshot user card ](http://i.imgur.com/g4y0Vce.png)
![hexo theme random screenshot categories ](http://i.imgur.com/M662lrh.png)
![hexo theme random screenshot tags cloud ](http://i.imgur.com/bkpds14.png)
![hexo theme random screenshot tag list ](http://i.imgur.com/e1q6gIn.png)
![hexo theme random screenshot code style ](http://i.imgur.com/wEBheiq.png)

## 主题安装

在你的博客目录里，执行如下的命令：

```sh
git clone https://github.com/stiekel/hexo-theme-random.git themes/random
```

然后修改博客的主配置文件，将主题设置为 `random`：

```yml
theme: random
```

## 头像设置

可以在 Hexo 主配置文件，或者主题的配置文件 `theme/random/_config.yml` ，增加一个 `avatar` 配置，如下：

```yml
avatar: http://7te9fe.com1.z0.glb.clouddn.com/default_avatar.jpg
```

## 菜单与导航链接的设置

显示在首页和导航的链接，可以在主题的配置文件（`theme/random/_config.yml`）中自定义。如果想链接到标签和分类的列表页，还需要自己手动创建对应页面。

### 链接

在主题的配置文件中，可以设置首页和导航菜单中的链接，配置如下：

```yml
menu:
  首页: /
  文章: /archives
  标签: /tags
  分类: /categories
  关于: /about
```

在首页中，会自动隐藏指向首页的链接。但是，标签和分类的列表页，需要我们手动创建。

### 创建分类列表页和标签列表页

hexo 默认是没有分类和标签列表页的，本主题已经提供了对这两个页面的支持，但需要手动生成对应的页面。

要生成标签列表页，在博客主目录中执行如下命令：

```sh
hexo new page tags
```

这样，会生成一个 `source/tags/index.md` 文件，编辑文件，修改文件的 `type` 项为 `tags`，如下：

```yml
title: 标签
date: 2016-01-16 06:17:29
type: "tags"
comments: false
```

同样，创建分类列表页：

```sh
hexo new page categories
```

编辑 `source/categories/index.md` 如下：

```yml
title: 分类
date: 2015-08-03 14:19:29
type: "categories"
comments: false
```

## 社交网站链接配置

在主页和点击头像弹出的个人信息卡片中，显示有社交网站的链接，需要在主题的配置文件 `theme/random/_config.yml` 中添加对应的配置，如下：

```yml
social:
  GitHub: https://github.com/stiekel
  Coding.NET: https://coding.net/u/Stiekel
  Twitter: https://twitter.com/SidCN
  Weibo: http://weibo.com/sidcn
  DouBan: http://www.douban.com/people/Stiekel/
```

在显示的时候，会自动根据社交网站的 url ，来显示对应的图标。除了上述几个，另外还支持 Facebook / Google Plus / Dribbble / LinkedIn / NPMjs / Youtube / 知乎 / Quora。

如果您喜欢的社交网站不在其中，欢迎提 [issue](https://github.com/stiekel/hexo-theme-random/issues)。

## 添加 RSS 图标

在上面的 `social` 配置项目中，添加一个索引名为 `RSS`，值为订阅地址的项目即可：

```yml
social:
  rss: http://chensd.com/feed
```

## 第三方服务的配置

本主题支持 [Google Analytics](https://www.google.com/analytics/) / [百度统计](http://tongji.baidu.com/web/welcome/login) / [Disqus](https://disqus.com/) / [友言](http://www.uyan.cc/) / [JiaThis](http://www.jiathis.com/)，即可以在主题配置文件中设置，也可以在博客的主配置文件中设置，增加项目如下：

```yml
# Google analytics
google_analytics:
# Baidu tongji
baidu_analytics:
# Disqus
disqus_shortname:
# Uyan
uyan_id:
# jiaThis
jiaThis_uid: 
jiathisConfig:
  data_track_clickback: true
  summary: ""
  showClose: true
  shortUrl: false
  hideMore: false
```

对应各个服务的 key 或者 code，直接添加在冒号之后即可。

## 主题配置

主题安装后，不需要任何配置，也可以很好的显示。

### 背景图来源的配置

对于轮播的背景图片，有两种来源，一是使用指定的图片，二是使用 [unsplash](https://source.unsplash.com/) 提供的随机图片。

如果使用 unsplash 的图片，则可以在主题的配置文件 `_config.yml` 中进行配置，参数的具体意见，请参见 [unsplash文档](https://unsplash.it/)：

```yml
unsplashConfig:
  # 关于这几个配置项的说明，请参见 https://unsplash.it/
  # blur: true # 给图片增加模糊特效
  gravity: 'north' # north, east, south, west, center # 图片翻转
  # greyscale: true # 使用灰度图片
```

当然，也可以自己配置背景图片，也是在主题配置文件中进行，如下：

```yml
backgroundImages:
- http://7te9fe.com1.z0.glb.clouddn.com/bgimg_1.jpg?imageView2/1/w/__width__/h/__height__
- http://7te9fe.com1.z0.glb.clouddn.com/bgimg_2.jpg?imageView2/1/w/__width__/h/__height__
- http://7te9fe.com1.z0.glb.clouddn.com/bgimg_3.jpg?imageView2/1/w/__width__/h/__height__
- http://7te9fe.com1.z0.glb.clouddn.com/bgimg_4.jpg?imageView2/1/w/__width__/h/__height__
- http://7te9fe.com1.z0.glb.clouddn.com/bgimg_5.jpg?imageView2/1/w/__width__/h/__height__
```

URL 中的 `__width__` 和 `__height__` ，在请求时，会替换为浏览器的宽度和高度值，如果你的图片服务器支持按分辨率裁剪，那就可以用得上。

### 背景图轮播的配置

背景图轮播，使用的是 [vegas](http://vegas.jaysalvat.com) ，也是在主题的配置文件中进行自定义：

```yml
vegasConfig:
  # animation: 'random'
  preload­Image: true # 图片预加载配置
  transition: # 图片的切换物资
    - slideLeft2
    - slideRight2
    # - zoomIn
    # - swirLeft
    # - swirRight
    # - flash
    - flash2
  # transition: 'swirlRight' # 可以只配置一个
  timer: true # 是否显示时间进度条
  delay: 5000 # 每张图片的显示时间
  shuffle: true # 按顺序播放，还是随机播放
  count: 10 #一共多少张图片
```

具体参数的意义，请参见 [vegas 文档](http://vegas.jaysalvat.com/documentation/settings/)。

### 关闭背景图轮播

如果你不喜欢背景图和轮播，是可以关闭的，在主配置文件或者主题配置文件中添加如下的值：

```yml
turnoffBackgroundImage: 
  # home page
  index: false
  # arcihve / categories / tags
  post_list: false
  # post and page
  post: true
```

关闭背景图后，可以通过下面的变量来设置背景色，注意，不要包括 # ：

```yml
backgroundColor: D7CCC8
```


### Hide 按钮

在每个页面的左下角，都有一个 __Hide__ 按钮，点击这个按钮之后，按钮之外的东西都会被隐藏。如果不想显示这个按钮，可以在主题或者 Hexo 的主配置文件中修改 `hideButtonVisibility`，设置为 `false`：

```yml
hideButtonVisibility: false
```

### 忽略特定服务器的访问统计

当你在调试和写作的时候，可以不将这些访问发送到 Google Analytics 或百度统计，只需要将你的调试服务器地址加入到下面的配置变量即可：

```yml
isIgnoreSpecialHostVisitor: true
ignoreHostList:
  - localhost
  - 127.0.0.1
```

## 感谢

* 背景轮插插件： [vegas](http://vegas.jaysalvat.com/)
* 社交网站链接图标： [iconfont](http://iconfont.cn/)
* Hexo 主题生成器： [generator-hexo-theme](https://github.com/tcrowe/generator-hexo-theme)
* 视频播放： [plyr](https://plyr.io/)

## 反馈

欢迎使用，如果有问题，请您在 [issue](https://github.com/stiekel/hexo-theme-random/issues) 中提出来。
