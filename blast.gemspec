# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "blast/version"

Gem::Specification.new do |s|
  s.name        = "blast"
  s.version     = Blast::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mike Bethany"]
  s.email       = ["mikbe.tk@gmail.com"]
  s.homepage    = "http://mikbe.tk"
  s.summary     = %q{A hybrid static-dynamic blog framework}
  s.description = %q{Combines the speed of static site generators while bridging the gap between feature bereft blog engines and resource hungry content management systems.}
  
  s.add_dependency('rack')

  s.add_development_dependency('rspec')
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
