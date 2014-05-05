# coding: utf-8

module GetGithubPubKeys
  include GetGithubPubKeys::Files
  include Connection
  module Client
    class Client
      attr_accessor :path

      def initialize(path = ".ssh") 
        @path = path
      end

      # confirm .ssh directory
      def confirm
        ssh_create unless ssh_exists?
      rescue
        raise ".ssh don't exists."
      end

      def find( options = {} )
        con = Connection.new
        response = con.connection(options).get("users/#{@user}/keys")   
        public_keys = response.body
        if public_keys.is_a? Array
          public_keys.each do |public_key| 
            Files.write(public_key[:id], public_key[:key])
          end
        else
          Files.write(public_key[:id], public_key[:key])
        end
      end
    end
  end
end

