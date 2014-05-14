require 'spec_helper'
require 'faraday'

# FIXME: APIを提供しているサービスのテストをこちらでする必要はないと思うので
# デプロイする際に動く確認するテスト。
describe GetGithubPubKeys do
  before(:each) do
    conn = Faraday.new( url: 'https://api.github.com' ) do |faraday|
      faraday.request :url_encoded
      faraday.request :json
      faraday.adapter Faraday.default_adapter
    end
  end

  describe 'Faraday#Connection' do
    it 'is success' do
      response = conn.get
      expect(response.status).to eq(200)
    end

    it 'Content-type is application/json' do
    # FIXME: faraday_middlewareでparse_jsonを利用するとContent-typeをapplication/jsonに上書きしてしまう
      response = conn.get
      expect(response.env["CONTENT_TYPE"]).to eq("application/json")
    end
  end
end

