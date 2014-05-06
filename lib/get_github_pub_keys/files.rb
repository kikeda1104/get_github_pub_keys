# coding: utf-8
require 'logger'

module GetGithubPubKeys
  module Files
    DEFAULT_SSH_DIRECTORY = "/#{ENV["HOME"]}/.ssh".freeze
    DEFAULT_IDENTIFY = '.pub'.freeze
    attr_accessor :path
    #
    # This method confirm exists .ssh directory. 
    def ssh_exists?
      File.exists(DEFAULT_SSH_DIRECTORY)
    end
    #
    # create /HOME_DIRECOTY/.ssh directory
    def ssh_create
      Dir.mkdir("#{ENV["HOME"]}/#{DEFAULT_SSH_DIRECTORY}")
    end

    # public_keys file create to .ssh directory.
    def self.create(file_name, body)
      file_name = file_name.to_s
      file_name = File.basename(file_name)
      file_name = file_name + "_" + Time.now.strftime("%Y%0m%0d%0H%0M%0S") + DEFAULT_IDENTIFY
      body = body.gsub("\n","")
      File.open(DEFAULT_SSH_DIRECTORY + "/" + file_name, "w") do |file|
        file.puts body
      end
      puts "Create public_key file: #{file_name}."
    rescue => e
      puts e.message
      nil
    end
  end
end

