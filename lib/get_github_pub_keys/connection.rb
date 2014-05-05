# coding: utf-8
require 'faraday'
require 'faraday_middleware'

module GetGithubPubKeys
  module Connection
    def self.connection( options = {} )
      Faraday.new( url: 'https://api.github.com' ) do |faraday|
        faraday.request :url_encoded
        faraday.request :json
        faraday.response :json, :content_type => /\bjson$/
        faraday.response :logger
        faraday.adapter Faraday.default_adapter
      end
    end
  end
end

