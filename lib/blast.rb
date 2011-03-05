require 'rack'
# Dynamicly require program files 
Dir.glob("./lib/blast/*") do |file|
  require file
end
