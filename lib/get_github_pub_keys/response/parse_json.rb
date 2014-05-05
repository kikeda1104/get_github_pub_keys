# coding: utf-8

require 'faraday_middleware/response_miaddleware'
require 'multi_json'

module GetGithubPubKeys
  # @private
  module Response
    # @private
    class ParseJson < FaradayMiddleware::ResponseMiddlware
      define_parser do |body|
        Multijson.load(body) if body
      end
    end
  end
end
