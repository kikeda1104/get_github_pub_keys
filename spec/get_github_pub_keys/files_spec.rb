require 'spec_helper'
require 'fakefs/spec_helpers'
require 'get_github_pub_keys'

describe GetGithubPubKeys::Files do
  include FakeFS::SpecHelpers

  context 'Files#create' do
    it 'when create file' do
      FakeFS.activate!
      file_name = GetGithubPubKeys::Files.create('1234567890', 'hogehoge')
      FakeFS.deactivate!
      expect(File.exist?("/#{ENV['HOME']}/.ssh/" + File.basename(file_name))).to eq(be_true)
    end
  end
end
