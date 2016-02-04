$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_paginator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_paginator"
  s.version     = SimplePaginator::VERSION
  s.authors     = ["Nick Evans"]
  s.email       = ["me@nevans.ca"]
  s.homepage    = "github.com/manygrams/simple_paginator"
  s.summary     = "Simple paginator for Rails + ActiveRecord."
  s.description = <<-DESC
    Simple paginator for Rails + ActiveRecord. It simply shows customizable
    Previous / Next buttons.
  DESC
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "gem_reloader"
  s.add_development_dependency "pry-byebug"
end
