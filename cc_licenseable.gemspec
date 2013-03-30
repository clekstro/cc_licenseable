$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cc_licenseable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cc_licenseable"
  s.version     = CcLicenseable::VERSION
  s.authors     = ["Curtis Ekstrom"]
  s.email       = ["ce@canvus.io"]
  s.homepage    = "https://github.com/clekstro/cc_licenseable"
  s.summary     = "Rails 3 Engine to license model objects with Creative Commons licenses."
  s.description = "License your ActiveRecord models under Creative Commons licenses"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "cucumber-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "pry"
  s.add_development_dependency "better_errors"
  s.add_development_dependency "binding_of_caller"
end
