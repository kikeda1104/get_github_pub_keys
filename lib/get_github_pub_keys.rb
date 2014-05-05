# coding: utf-8

# FIXME: module, classの区別とrequire, include, extendを区別する
require 'get_github_pub_keys/connection'
require 'get_github_pub_keys/files'
require 'get_github_pub_keys/client'

module GetGithubPubKeys
  def self.new(user = nil)
    return if user.nil?
    Client.new(user)
  end
end
