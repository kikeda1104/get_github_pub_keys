# coding: utf-8

module GetGithubPubKeys
  include Request
  include GetGithubPubKeys::Files
  include Connection

  class Client
    attr_accessor :path

    def initialize(path = ".ssh") 
      @path = path
    end

    def find( options = {} )
      # options
      # FIXME:
      con = Connection.new
      response = con.connection(options).get("users/#{@user}/keys")   
      response.body
    end
  end
end
