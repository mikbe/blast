puts "loading: spec_helper.rb"
$:.unshift File.expand_path((File.dirname(__FILE__) + '/../lib'))
$:.unshift File.expand_path((File.dirname(__FILE__)))

require 'blast'
require 'rspec'
require 'aruba'
require 'fakefs/spec_helpers'

# Debug print
module Kernel
  def dp(value)
    puts ""
    puts "*" * 40
    puts "value: #{value}"
    puts "&" * 40
    puts ""
  end
  def dpi(value)
    dp(value.inspect)
  end
end