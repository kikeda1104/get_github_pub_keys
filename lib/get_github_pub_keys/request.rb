# coding: utf-8

require 'faraday'

module GetGithubPubKeys
  class Request
    def request(http_method, path, options) 
      options = default_options.merge(options)
       
      Faraday::Connection.new(endpoint, options) do |request|
        request.url(path, options)
      end
    end

    def get(path, options = {})
      request(:get, path, options)
    end
  end
end

