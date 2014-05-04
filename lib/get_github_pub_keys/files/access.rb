# coding: utf-8
require 'logger'

module GetGithubPubKeys
  module Files
    class Access
      DEFAULT_SSH_DIRECTORY = ".ssh"
      attr_accessor :path

      def initialize
        @path = DEFAULT_SSH_DIRECTORY
      end
      # This method confirm exists .ssh directory. 
      def ssh_exists?
        File.exists(@path)
      end
      
      # create /HOME_DIRECOTY/.ssh directory
      def ssh_create
        Dir.mkdir("#{env["HOME"]}/#{@path}")
      end

      # public_keys file create to .ssh directory.
      def self.create( file_name, body )
        file_name = file_name.to_s
        File.write(@path + '/' + file_name.to_s, body)
      rescue => e
        puts e.message
        # FIXME: exec raise
        nil
      end
    end
  end
end

