# coding: utf-8

require 'spec_helper'
require 'get_github_pub_keys'

describe GetGithubPubKeys::Client do
  describe "Client#new" do
    context "when GetGithubPubKeys::Client class" do
      it "set username" do
        client = GetGithubPubKeys::Client.new("hoge")
        expect(client).to be_a_kind_of(GetGithubPubKeys::Client)
      end

      it "don't set username" do
        client = GetGithubPubKeys::Client.new()
        expect(client).to be_a_kind_of(GetGithubPubKeys::Client)
      end
    end
  end

  describe 'Client#find_and_create' do
    it "when find find_and_create" do
      client = GetGithubPubKeys::Client.new("hoge")
      expect(client.respond_to?("find_and_create")).to be_true
    end
  end
end

