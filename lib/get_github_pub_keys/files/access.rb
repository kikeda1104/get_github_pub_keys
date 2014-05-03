# coding: utf-8

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

      def create( file_name, body )
        File.write(file_name, body)
      end
    end
  end
end

