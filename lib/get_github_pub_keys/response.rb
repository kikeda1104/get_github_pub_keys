# coding: utf-8

require 'faraday'
require 'get_github_pub_keys/response/raise_error'

Faraday.register_middleware :response,
                            raise_error: -> { GetGithubPubKeys::Response::RaiseError }
