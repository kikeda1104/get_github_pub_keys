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
    # FIXME: githubのapiから手に入れる公開鍵のフォーマットについて調べる。
    # 恐らく文字列のまま文字コードだけ気にしていれば良さそう
    def self.create(file_name, body)
      file_name = file_name.to_s
      file_name = File.basename(file_name)
      # FIXME: 保存先がファイル実行ディレクトリになっている
      file_name = file_name + "_" + Time.now.strftime("%Y%0m%0d%0H%0M%0S") + DEFAULT_IDENTIFY
      open(DEFAULT_SSH_DIRECTORY + "/" + file_name, "w:eucJP") {|file| file.write(body)}
    rescue => e
      puts e.message
      nil
    end
  end
end

