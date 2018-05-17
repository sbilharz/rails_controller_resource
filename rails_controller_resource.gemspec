$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "rails_controller_resource/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_controller_resource"
  s.version     = RailsControllerResource::VERSION
  s.authors     = ["Stefan Bilharz"]
  s.email       = ["sbilharz@heilmannsoftware.de"]
  s.homepage    = "https://github.com/sbilharz/rails_controller_resource"
  s.summary     = "CRUD resources for rails controllers that can be composed of several associated models and provide dynamic read/write access to single attributes"
  s.description = "CRUD resources for rails controllers that can be composed of several associated models and provide dynamic read/write access to single attributes"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.required_ruby_version = '>= 2.5'

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency 'rspec', '~> 3'
  s.add_development_dependency 'rspec-rails', '~> 3'
  s.add_development_dependency 'rails-controller-testing', '~> 1'
  s.add_development_dependency "sqlite3"
end
