$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "get_github_pub_keys/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "get_github_pub_keys"
  s.version     = GetGithubPubKeys::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of GetGithubPubKeys."
  s.description = "TODO: Description of GetGithubPubKeys."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.0"
  s.add_dependency "faraday", "~> 0.8.9"
  s.add_dependency "faraday_middleware"
  s.add_dependency "rspec"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-byebug"
end
