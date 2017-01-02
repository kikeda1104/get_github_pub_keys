# coding: utf-8

module GetGithubPubKeys

  class Client
    include Connection
    include GetGithubPubKeys::File

    def initialize(user=nil)
      @user = user
    end

    def find_and_create( options = {} )
      response = Connection.new(options).get("users/#{@user}/keys")
      public_keys = response.body

      if public_keys.is_a? Array
        public_keys.each { |public_key| GetGithubPubKeys::Files.create public_key["id"], public_key["key"] }
      else
        GetGithubPubKeys::Files.create public_keys["id"], public_keys["key"]
      end
    end
  end
end

