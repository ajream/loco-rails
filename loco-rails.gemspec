$:.push File.expand_path("../lib", __FILE__)

require "loco/version"

Gem::Specification.new do |s|
  s.name        = "loco-rails"
  s.version     = Loco::VERSION
  s.authors     = ["Zbigniew Humeniuk"]
  s.email       = ["hello@artofcode.co"]
  s.homepage    = "http://locoframework.org"
  s.summary     = "Framework on top of Rails."
  s.description = "Rails is awesome, but modern web needs Loco-motive."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '>= 4.2'

  s.add_development_dependency 'coffee-rails', '~> 4.1'
  s.add_development_dependency 'minitest-reporters', '~> 1.1'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'bcrypt', '~> 3.1'
  s.add_development_dependency 'hirb', '~> 0.7'
  s.add_development_dependency 'sass-rails', '~> 5.0'
  s.add_development_dependency 'capybara', '~> 2.9.1'
  s.add_development_dependency 'launchy', '~> 2.4'
  s.add_development_dependency 'selenium-webdriver', '~> 2.53.4'
  s.add_development_dependency 'database_cleaner', '~> 1.5.3'
  s.add_development_dependency 'puma', '~> 3.6.0'
  s.add_development_dependency 'redis', '~> 3.3.1'
end
