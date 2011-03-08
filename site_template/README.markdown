# Blast!

## Usage


## What are all these directories?

### addons
If you want to add something like the 960 grid-system, jQuery, or web-fonts to your site you should put them in here. They will be automatically added when your site is compiled. You can control the order in which they are added by simply numbering them as you'll see by the examples.

In addition you can specify different environments simply by prefixing them with "production-" "development-", or "test-". You probably don't need test but it's there if you do.

In development no files, no files anywhere, are minified or gzipped so debugging is much easier. There's no need to add minified or gzip files yourself as this will be done for you when your site is compiled for production.

### articles
This is where you write your articles. You can use HTML, Markdown, even HAML if you want. Just remember there will be no backend dynamic content other than comments and searches.

### db
This holds the local database. You shouldn't touch anything in here as all the files in here are generated automatically.

### config
As you would expect this is where the configuration files go for your site

database.yml - Similar to Rails this is where you configure your remote database connections. (What about security for public repo of your site like with github?)

### design
This is where you design your site. You should only include files that are part of your design in these folders.
This keeps your design separate from your content and allows you to replace your site design with a simple drop in.

#### images
Only images that have something to do with the design of the site should be stored here.

#### javascript
Only scripts that affect the design of the site should go here.

#### pages
Think of these as links from your navigation bar. You can add as many pages as you want and they will automatically be added to the navigation object. The only pages absolutely needed are the layout, index, articles, and article pages.

layout.haml defines your headers and footers.  
index.haml is the default page visitors see when they visit your site.  
articles.haml lists all your articles.
article.haml displays a single article.
about.haml describes your site.
links.haml gives you a place to share the other sites you like.

#### sass
This is where you put your style sheets. As you can see by the name you should be writing in [SASS]. Feel free to drop your CSS in here as well and it will automatically be converted to SASS for you. If you really hate that you can create a CSS directory and Blast won't touch it other than add the CSS to your generated site.

### downloads
If you want to include images in your articles or host downloadable files they should be put in here. You can name the directories whatever you want but if you go with the defaults you won't have to specify path locations in your articles.

### _site
This folder holds your generated site. You should never touch anything in here as it's all compressed and not very human readable. Think of this as the "public" folder in a Rack or Rails app but it's named differently to highlight that it shouldn't be touched. If you have control of your server you can set this folder to be directly served without any processing and you can set caching to maximum.


[SASS][http://sass-lang.org]