# coding: utf-8

require 'spec_helper'
require 'get_github_pub_keys'

describe GetGithubPubKeys::Client do
  before do
    let(:client) { Client.new }
  end

  describe "Client#new" do
    it "is success" do
      client = GetGithubPubKeys::Client.new("hoge")
      expect(client).to be_a_kind_of(GetGithubPubKeys::Client)
    end
  end

  describe 'Client#find_and_create' do
    # expect
    it "is there find_and_create" do
      client = GetGithubPubKeys::Client.new("hoge")
      expect(client.respond_to?("find_and_create").to be_nil
    end
  end
end
