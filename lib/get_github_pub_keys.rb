# coding: utf-8

require 'get_github_pub_keys/connection'
require 'get_github_pub_keys/files'
require 'get_github_pub_keys/client'

module GetGithubPubKeys
  def self.new(user = nil)
    return if user.nil?
    Client.new(user)
  end
end
