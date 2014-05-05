# coding: utf-8

# FIXME: module, classの区別とrequire, include, extendを区別する
require 'get_github_pub_keys/connection'
require 'get_github_pub_keys/files'
require 'get_github_pub_keys/client'

module GetGithubPubKeys
  include Client
  class GetData
    def initialize(user)
      @user = user
    end

    def create
      
    end
  end
end
