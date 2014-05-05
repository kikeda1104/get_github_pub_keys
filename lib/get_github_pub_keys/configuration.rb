# coding: utf-8

require 'faraday'
require 'get_github_pub_keys/version'

module GetGithubPubKeys
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :api_key,
      :endpoint,
      :proxy,
      :user_agent
    ].freeze
    
    DEFAULT_ADAPTER = Faraday.default_adapter

    DEFAULT_API_KEY = nil

    DEAFULT_ENDPOINT = 'http://api.github.com'.freeze
    
    DEFAULT_PROXY = nil

    DEAFUALT_USER_AGENT = "".freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def options 
      VALID_OPTIONS_KEYS.inject({}) do |options, key|
        options.merge!(key => send(key))
      end
    end

    # Reset all configuration options to defaults
    def reset
      self.adapter = DEFAULT_ADAPTER
      self.api_key = DEFAULT_API_KEY
      self.endpoint = DEFAULT_ENDPOINT
      self.proxy = DEFAULT_PROXY
      self.user_agent = DEFAULT_USER_AGENT
      self
    end
  end
end 

