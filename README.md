# hexo-theme-random
A hexo theme with random fullscreen background image.

## Demo

* [Demo](https://env-wwufiyop-1252212664.tcloudbaseapp.com/random-demo/?latest)

## [中文文档](README.CN.md)

If you

* prefer to use fullscreen picture as background image
* do NOT like show article abstract in post list
* do NOT like use paginations in post list

This theme seems to suit you.

## Screenshot

![hexo theme random screenshot homepage ](http://i.imgur.com/6N7QVHp.png)
![hexo theme random screenshot archive ](http://i.imgur.com/bfcRUbO.png)
![hexo theme random screenshot detail ](http://i.imgur.com/nYiNCha.png)
![hexo theme random screenshot user card ](http://i.imgur.com/g4y0Vce.png)
![hexo theme random screenshot categories ](http://i.imgur.com/M662lrh.png)
![hexo theme random screenshot tags cloud ](http://i.imgur.com/bkpds14.png)
![hexo theme random screenshot tag list ](http://i.imgur.com/e1q6gIn.png)
![hexo theme random screenshot code style ](http://i.imgur.com/wEBheiq.png)

## Install

execute this command in blog root path:

```sh
git clone https://github.com/stiekel/hexo-theme-random.git themes/random
```

modify the `theme` setting in hexo main config file `_config.yml` as following:

```yml
theme: random
```

## Avatar

You can config the avatar in hexo main config file or theme config file as following:

```yml
avatar: http://7te9fe.com1.z0.glb.clouddn.com/default_avatar.jpg
```

## Nav links config

Nav links in homepage and the top of other pages, you can config it in theme config file `theme/random/_config.yml`:

```yml
menu:
  Home: /
  Archives: /archives
  Tags: /tags
  Categories: /categories
  About: /about
```

In index page, the `Home` link will hide itself.

## Create tags list page and categories list page

Hexo do NOT create tags list page and categories list page in default, but Random theme provide those pages, you just need to create it.

If you want to create tags list page, run this command in blog root path:

```sh
hexo new page tags
```

this will create a folder and a markdown file `source/tags/index.md`, change the `type` value of thie file as following:

```yml
title: Tags
date: 2016-01-16 06:17:29
type: "tags"
comments: false
```

the same to create categories list page:

```sh
hexo new page categories
```

and modify the `source/categories/index.md` as following:

```md
title: Categories
date: 2015-08-03 14:19:29
type: "categories"
comments: false
```

## Social links config

In the homepage, and the user card when visitors click the avatar, there are some social site icon links, You can config the icons in theme config file `theme/random/_config.yml` as following:

```yml
social:
  GitHub: https://github.com/stiekel
  Coding.NET: https://coding.net/u/Stiekel
  Twitter: https://twitter.com/SidCN
  Weibo: http://weibo.com/sidcn
  DouBan: http://www.douban.com/people/Stiekel/
```

It will replace text into icon automaticalcally, Random theme support to show icon of Facebook / Google Plus / Dribbble / LinkedIn / NPMjs / Youtube / Zhihu / Quora.

If you need more, please create [issue](https://github.com/stiekel/hexo-theme-random/issues).

## Add RSS Icon

If you want add RSS icon to social links, please add the following code at the `social` section in config file:

```yml
social:
  rss: http://chensd.com/feed
```

## Third party Service

Random support [Google Analytics](https://www.google.com/analytics/) / [Baidu Tongji](http://tongji.baidu.com/web/welcome/login) / [Disqus](https://disqus.com/) / [Uyan](http://www.uyan.cc/) / [JiaThis](http://www.jiathis.com/) / [Valine](https://valine.js.org/en/index.html) / [gitalk](https://github.com/gitalk/gitalk), You can config these in theme config file or hexo main config file:

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
valine:
  enable: false # set true if you want to use
  appId: #your leancloud appId
  appKey: #your leancloud appKey
  guest_info: nick,mail,link #valine comment header info
  placeholder: # valine comment input placeholder(like: Please leave your footprints )
  avatar: robohash # gravatar style https://valine.js.org/avatar
  pageSize: 10 # comment list page size
  verify: false # valine verify code (true/false)
  notify: true # valine mail notify (true/false) 
  lang: en
  visit_analytics: true

gitalk:
  enable: false
  clientID: clientID
  clientSecret: clientSecret
  repo: gitalk-comments
  owner: github-username
```

Just add the key or code after the ':'.

## Theme config

The following settings is not prerequisite.

### Show latest articles in homepage

Homepage did NOT show latest article links by default, if you want show latest articles in homepage, you need to add `homepageArticleCount` in theme or site config, `0` to hide latest article links.

```yml
# show latest 3 articles in homepage
homepageArticleCount: 3
```

### Background image source config

The background image use [unsplash](https://source.unsplash.com/) as default, but you can use your custom pictures.

If you use unsplash images, you can config the settings in theme config file `theme/random/_config.yml`: 

```yml
unsplashConfig:
  # more about config on https://unsplash.it/
  # blur: true
  gravity: 'north' # north, east, south, west, center
  # greyscale: true
```

if you want use your own pictures, change the following section:

```yml
backgroundImages:
- https://unsplash.it/__width__/__height__?random&t=6&gravity=center
- https://unsplash.it/__width__/__height__?random&t=6&gravity=center
- https://unsplash.it/__width__/__height__?random&t=6&gravity=center
- https://unsplash.it/__width__/__height__?random&t=6&gravity=center
- https://unsplash.it/__width__/__height__?random&t=6&gravity=center
```

`__width__` and `__height__` in URLs will replace with browser window size when show the picture, It's very useful when you image server support cut image into appointed size.

### Vegas(background image player) config

Random theme use [Vegas](http://vegas.jaysalvat.com/) to organize pictures, you can config it in following section of theme config file:

```yml
vegasConfig:
  # more about config http://vegas.jaysalvat.com/documentation/settings/
  # animation: 'random'
  # transition: 'swirlRight'
  preload­Image: true
  transition:
    - slideLeft2
    - slideRight2
    # - zoomIn
    # - swirLeft
    # - swirRight
    # - flash
    - flash2
  timer: true
  delay: 5000
  shuffle: true
  count: 28
```

### Do NOT use background images

If you do NOT like the background iamges, you can turn it off, please add this option in you site config or theme config file:

```yml
turnoffBackgroundImage: 
  # home page
  index: false
  # arcihve / categories / tags
  post_list: false
  # post and page
  post: true
```

and you can set the background color with:

```yml
backgroundColor: D7CCC8
```

### Hide button

There is a __Hide__ button on the left bottom of every page, all of the content except button itself will be hide while user click this button. If you want to hide this button, please change `hideButtonVisibility` to `false` in theme config or main config file:

```yml
hideButtonVisibility: false
```

### Ignore visitor statistics on special server

When you are debugging or writting, you may do NOT like to send the visitor statistics to Google Analytics or Baidu Tongji, Just add the debugging server address to the following variables:

```yml
isIgnoreSpecialHostVisitor: true
ignoreHostList:
  - localhost
  - 127.0.0.1
```

## Thanks

* [Vegas](http://vegas.jaysalvat.com)
* [iconfont](http://iconfont.cn/)
* [generator-hexo-theme](https://github.com/tcrowe/generator-hexo-theme)
* [plyr](https://plyr.io/)

## Feedback

[issue](https://github.com/stiekel/hexo-theme-random/issues).
