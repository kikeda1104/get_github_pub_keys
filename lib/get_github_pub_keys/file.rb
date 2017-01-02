# coding: utf-8

module GetGithubPubKeys
  module File
    DEFAULT_SSH_DIRECTORY = "/#{ENV["HOME"]}/.ssh".freeze
    DEFAULT_IDENTIFY = '.pub'.freeze
    # public_keys file create to .ssh directory.
    def self.create(file_name, body)
      file_name = File.basename(file_name.to_s)
      file_name = file_name + "_" + Time.now.strftime("%Y%0m%0d%0H%0M%0S") + DEFAULT_IDENTIFY
      body.chomp!
      File.open(DEFAULT_SSH_DIRECTORY + "/" + file_name, "w") do |file|
        file.puts body
      end
      puts "Create public_key file: #{file_name}."
    rescue => e
      abort e.message
    end
  end
end

