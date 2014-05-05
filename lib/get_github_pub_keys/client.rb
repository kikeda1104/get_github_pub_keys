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

    def find( options = {} )
      response = Connection.new(options).get("users/#{@user}/keys")   
      public_keys = response.body

      if public_keys.is_a? Array
        public_keys.each do |public_key| 
          puts "============================"
          puts "create files"
          Files.write(public_key["id"].to_s, public_key["key"])
          puts "============================"
        end
      else
        puts "============================"
        puts "create files"
        Files.write(public_keys["id"].to_s, public_keys["key"])
        puts "============================"
      end
    end
  end
end

