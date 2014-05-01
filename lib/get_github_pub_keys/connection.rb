# coding: utf-8
require 'faraday'

module GetGithubPubKeys
  class Connection
    def connection( options = {} )
      Faraday.new( url: 'http://api.github.com' ) do |faraday|
        faraday.request :url_encoded
        faraday.request :logger
        faraday.request Faraday.default_adapter
      end
    end
  end
end
