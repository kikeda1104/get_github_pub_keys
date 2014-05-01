# coding: utf-8

require 'faraday'

module GetGithubPubKeys
  include Connection
  class Request
    def initialize(user)
      @user = user
    end

    def request( username )
      faraday = Connection.new
      response = faraday.connection().get('/#{username}/keys')
      response.body
    end
  end
end
