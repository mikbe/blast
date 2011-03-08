# Imaginary Product Description

## BLAST!
**A Ruby based blog framework.**

#### What is Blast?
Blast (BLog fAST) is a blogging framework that gives you the speed of a static site generator while still allowing dynamic content like comments and searches.

Blast "compiles" your articles and pages to static HTML for unparalleled speed while also giving you the flexibility and power of a dynamic site by providing a server-side back-end that only gets called when it's needed.

Blast provides the same speed advantages as a static site generator like <a href="http://nanoc.stoneship.org/" target="new">nanoc</a> or <a href="http://jekyllrb.com/" target="new">Jekyll</a> while bridging the gap between feature bereft blog engines like <a href="http://cloudhead.io/toto" target="new">Toto</a> and a resource intensive CMS like <a href="http://wordpress.org/" target="new">Wordpress</a>. It's not so simple you'll instantly be wanting more and it's not so complex it brings your webserver to a crawl.

#### Who is it for?
Blast is for programmers that want a fast, expandable, secure, and most of all simple framework for blogging. You can be up and running in as little as X minutes.

#### Can I really have it up and running in X minutes?
Yes, check out these screencasts showing how...

**On your own server**  
[video tutorial]

**On Heroku**  
[video tutorial]

#### Can I use it if I'm not a programmer?
Probably. You can use it right out of the box with the provided template and just write plain text articles but to get the most out of it you'll want to have a basic understanding of HTML, HAML or Erb, Ruby, and a little knowledge of Git wouldn't hurt either. (It's really meant for programmers)

#### What is it written in?
Blast is written in <a href="http://www.ruby-lang.org/en/" target="new">Ruby 1.9.2</a> and uses the <a href="http://rack.rubyforge.org/" target="new">Rack framework</a> for the dynamic back-end.

#### What OSes will it run on?
If Ruby and Rack work on your OS then Blast should too. I personally develop on a MacBook Pro running <a href="http://www.apple.com/macosx/">OS X 10.6</a> and my server is an <a href="http://www.ubuntu.com/">Ubuntu 10.10</a> <a href="http://www.virtualbox.org/" target="new">virtual server</a> on top of a Mac Mini also running OS X 10.6.

#### What webservers does it support?
Again, if your webserver supports Ruby and Rack it should work on that server but it was designed with <a href="http://wiki.nginx.org/Main">Nginx</a> and <a href="https://github.com/defunkt/unicorn">Unicorn</a> in mind; using Nginx as a reverse proxy and Unicorn as the webserver. This configuration allows you to add new Unicorn proxies for scalable horizontal load balancing.

#### Will it work on Heroku?
Yes, it works on <a href="http://heroku.com/" target="new">Heroku</a> but you'll need to be aware if you're running on the free account with only 5MB of database storage you'll want to compile comments into your blog every now and then (simply republishing your site will do this for you). You'll also want to restrict searches to keywords and categories; when you do this your articles are not stored in the database so you have a much smaller database footprint but you also can't do full text searches.

#### What databases does it support?
MySQL, PostgreSQL, and SQLite right now. Blast uses SQLite on your local machine so you don't have to muck about with a database server just to write a text file then when you publish any data, like pre-indexed searches, are uploaded to your server's database. It's the best of both worlds.

#### Why write it? Aren't there like a gazillion other blog systems already?
Yes, there are, but this one is mine. I'm doing this as a programming exercise but I also think it can be really useful since it provides a solution that doesn't currently exist; a hybrid of a static site generator with a dynamic back-end giving you the best of both worlds.

#### Is there a graphical client I can use to manage my site?
Not currently but I am envisioning one. I'd like to learn some GUI design using Ruby so maybe after I'm done with this.


## Feature list

* Markup-Extra for articles
* HAML for template design
* SASS for CSS design
* Minifies css, javascript
* GZips css, javascript (leaves plain-text intact as well for non-gzip browsers)
* Proper cache management - when files are changed they get downloaded if not they are still cached

## Sensible defaults

External links are, by default, opened in a new tab
