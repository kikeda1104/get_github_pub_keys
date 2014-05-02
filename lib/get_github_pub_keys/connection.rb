# coding: utf-8
require 'faraday'

module GetGithubPubKeys
  class Connection
    def connection( options = {} )
      Faraday.new( url: 'https://api.github.com' ) do |faraday|
        faraday.request :url_encoded
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
      end
    end
  end
end

