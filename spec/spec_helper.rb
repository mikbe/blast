$:.unshift File.expand_path((File.dirname(__FILE__) + '/../lib'))
$:.unshift File.expand_path((File.dirname(__FILE__)))

require 'rspec'
require 'blast'

# Debug print
module Kernel
  def dp(value)
    puts ""
    puts "*" * 40
    puts "value: #{value}"
    puts "&" * 40
    puts ""
  end
end