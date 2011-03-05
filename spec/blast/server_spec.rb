require 'spec_helper'

describe Blast::Server do

  let(:blast) {Rack::MockRequest.new(Blast::Server.new)}

  context '/' do
    
    before(:all) do
      @response = blast.get("/")
      dpi @response
    end
    
    it 'responds with a 200 OK' do
      @response.status.should == 200
    end
    
    it 'returns text/html for the content type' do
      @response.original_headers["Content-Type"].should == "text/html"
    end

    it 'has something in the body' do
      #@response.body.should_not == ""
    end
  
  end

end