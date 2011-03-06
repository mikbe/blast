require "spec_helper"

describe Blast::Setup do

  let(:setup) {Blast::Setup.new}

  context "command line options" do

    it "creates a new project" do
      argv = ["-n", "test_blog"]
      setup.parse_command_line()
      
      
    end
    
  end

end