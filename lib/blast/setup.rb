require 'fileutils'

module Blast
  
  class Setup
    
    def parse_command_line(argv=ARGV)
      arguments = argv.clone
      # Command must be the first parameter
      case arguments.shift
        when "new"
          raise ArgumentError, "wrong number of arguments (0 for 1)" if arguments.count == 0
          project = arguments.shift
          site_template = File.expand_path(File.dirname(__FILE__) + "/../../site_template")
          # Jump through hoops to fix cp_r's inability to not copy the source directory name
          files = Dir.glob("#{site_template}/**")
          FileUtils.mkdir_p project
          FileUtils.cp_r files, project
        else
          puts "usage: #{argv}"
      end
      
    end
    
  end
  
end