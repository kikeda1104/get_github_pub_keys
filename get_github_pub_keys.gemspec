$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "get_github_pub_keys/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "get_github_pub_keys"
  s.version     = GetGithubPubKeys::VERSION
  s.authors     = ["Kazuyuki Ikeda"]
  s.email       = ["gankai1104@gmail.com"]
  s.homepage    = "https://github.com/kikeda1104/get_github_pub_keys"
  s.summary     = "The gem get public_keys from github"
  s.description = "This gem get publick_keys from registered of github."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "faraday",' ~> 0.10.0'
  s.add_development_dependency 'faraday_middleware'

  s.add_development_dependency "rspec", '~> 3.5'
  s.add_development_dependency 'rake'
end
