require 'bundler'
Bundler.setup
require 'blast'

# Rack config
use Rack::Static, :urls => ['/articles', '/css', '/js', '/images', '/files', '/favicon.ico'], :root => '_site'
use Rack::CommonLogger

unless ENV['RACK_ENV'] == 'production'
  use Rack::ShowExceptions
end

# Create and configure your Blast server
blast = Blast::Server.new do
    set :author,    "Your name here"                    # Default blog author's name
    set :site_name, "Blast!"                            # The name of your site
    set :summary,   :max => 150, :delim => /~/          # Length of article summary and delimiter
    set :url,       'http://yourblog.com'               # Your website address
end

run blast


