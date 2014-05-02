# coding: utf-8

require 'faraday'
require 'get_github_pub_keys/connection'

module GetGithubPubKeys
  class Request
    def initialize(user)
      @user = user
    end

    def request
      faraday = Connection.new
      response = faraday.connection().get("users/#{@user}/keys")
      response.body
    end
  end
end
