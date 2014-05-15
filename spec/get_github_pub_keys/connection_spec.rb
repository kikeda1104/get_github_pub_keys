# coding: utf-8

require 'spec_helper'
require 'faraday'

describe GetGithubPubKeys do
  describe "Connection#new" do
    it "options none" do
      get_github_pub_keys = GetGithubPubKeys.new()
      expect(get_github_pub_keys).to be_nil
    end
    
    it "options user_name" do
      get_github_pub_keys = GetGithubPubKeys.new("kikeda1104")
      expect(get_github_pub_keys).to be_a_kind_of(GetGithubPubKeys::Connection)
    end

    it "non github user" do
      pending
    end

    it "github user" do
      get_github_pub_keys = GetGithubPubKeys.new("kikeda1104")
      expect(get_github_pub_keys).to be_a_kind_of(GetGithubPubKeys::Connection)
    end
  end
end

