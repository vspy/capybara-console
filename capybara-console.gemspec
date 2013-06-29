$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "capybara-console/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "capybara-console"
  s.version     = CapybaraConsole::VERSION
  s.authors     = ["Victor Bilyk"]
  s.email       = ["victorbilyk@gmail.com"]
  s.homepage    = "https://github.com/vspy/capybara-console"
  s.summary     = "Capybara console for rails"
  s.description = "Adds the rake task to launch capybara console for your Rails project."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = []

  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "capybara"
end
