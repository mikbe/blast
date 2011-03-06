$:.unshift File.expand_path((File.dirname(__FILE__) + '/../config'))
require 'rack'

# Dynamically require program files 
Dir.glob("./lib/blast/*") do |file|
  require file
end
