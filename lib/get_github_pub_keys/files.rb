# coding: utf-8

require 'const.rb'

module GetGithubPubKeys
  module Files
    # public_keys file create to .ssh directory.
    def self.create(file_name, body)
      file_name = file_name.to_s
      file_name = File.basename(file_name)
      file_name = file_name + "_" + Time.now.strftime("%Y%0m%0d%0H%0M%0S") + DEFAULT_IDENTIFY
      File.open(DEFAULT_SSH_DIRECTORY + "/" + file_name, "w") do |file|
        file.puts body.chomp
      end
      puts "Create public_key file: #{file_name}."
      file_name
    rescue => e
      # FIXME: 例外処理
      puts e.message
    end
  end
end

