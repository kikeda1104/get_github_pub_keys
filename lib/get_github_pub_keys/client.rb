# coding: utf-8

module GetGithubPubKeys

  class Client
    include Connection
    include GetGithubPubKeys::Files
    attr_accessor :path

    def initialize(user=nil) 
      @user = user
    end

    # confirm .ssh directory
    def confirm
      ssh_create unless ssh_exists?
    rescue
      raise ".ssh don't exists."
    end

    def find_and_create( options = {} )
      response = Connection.new(options).get("users/#{@user}/keys")   
      public_keys = response.body

      # FIXME:response.raise_errorが正しく動作するのかを確認する
      # 登録されていないUserだとfile_nameがとれない
      if public_keys.is_a? Array
        public_keys.each do |public_key| 
          GetGithubPubKeys::Files.create public_key["id"], public_key["key"]
        end
      else
        GetGithubPubKeys::Files.create public_keys["id"], public_keys["key"]
      end
    end
  end
end

