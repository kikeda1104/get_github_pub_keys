# coding: utf-8


unless ENV['CI']
  require 'simplecov' 
  SimpleCov.start
end

require 'get_github_pub_keys'
require 'rspec'
require 'webmock/rspec'

Rspec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'

  def stube_get(path, endpoint = "https://api.github.com")
    stub_request(:get, endpoint + '/' + path)
  end
end
