require "spec_helper"

describe Blast::Setup do

  before(:each) do
    @setup = Blast::Setup.new
    @temp_dir = Dir.mktmpdir
    @app_root = File.expand_path(File.dirname(__FILE__) + "/../../")
    @start_dir = Dir.pwd
    FileUtils.cd @temp_dir
  end

  context "command line options" do

    context "new" do

      it "raises an error if no project name is given" do
        argv = ["new"]
        lambda{@setup.parse_command_line(argv)}.should raise_error(ArgumentError)
      end

      it "doesn't raise an error if a project name is given" do
        argv = ["new", "test_blog"]
        lambda{@setup.parse_command_line(argv)}.should_not raise_error
      end

      it "creates a new project if given a name" do
        argv = ["new", "test_blog"]
        @setup.parse_command_line(argv)
        File.directory?("test_blog").should == true
      end
      
      it "creates a deeply nested project even if the root directory doesn't exist" do
        argv = ["new", "blah/test_blog"]
        lambda{@setup.parse_command_line(argv)}.should_not raise_error
      end

      it "creates a full blog based on the site_template directory" do
        argv = ["new", "blah/test_blog"]
        @setup.parse_command_line(argv)
        
        # Get the info from the new test_blog
        FileUtils.cd argv[1]
        test_blog = Dir["**/*"]

        # Get the info from the site_template
        FileUtils.cd(@app_root + "/site_template")
        site_template = Dir["**/*"]
        
        test_blog.should == site_template
      end

    end
    
  end

  after(:each) do
    FileUtils.cd @start_dir
    FileUtils.rm_rf @temp_dir
  end

end