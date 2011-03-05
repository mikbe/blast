module Blast
  
  class Server
    
    def initialize config={}, &block
      
    end
    
    def call env
      response = Rack::Response.new

      response.status = 200
      response.finish
    end
    
  end
  
end