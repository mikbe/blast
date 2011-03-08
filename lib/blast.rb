$:.unshift File.expand_path(File.dirname(__FILE__) + '/../config')
require 'rack'

# Dynamically require program files 
Dir[File.expand_path(File.dirname(__FILE__) + '/blast/*')].each do |file|
  require file
end
