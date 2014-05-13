# coding: utf-8

require 'spec_helper'
require 'get_github_pub_keys'

describe GetGithubPubKeys::Client do
  describe "Client#new" do
    it "is success" do
      client = GetGithubPubKeys::Client.new("hoge")
      expect(client).to be_a_kind_of(GetGithubPubKeys::Client)
    end

    it "is failuer" do
      client = GetGithubPubKeys::Client.new()
      expect(client).to be_a_kind_of(GetGithubPubKeys::Client)
    end
  end

  describe 'Client#find_and_create' do
    it "is there find_and_create" do
      client = GetGithubPubKeys::Client.new("hoge")
      expect(client.respond_to?("find_and_create")).to be_true
    end
  end
end

