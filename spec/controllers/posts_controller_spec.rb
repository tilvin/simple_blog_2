require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  before do
    cookies['token'] = SecureRandom.hex
  end

  describe "GET #index" do
    it "returns a success response" do
      stub_request(:get, "#{ENV['BLOG_1_URL']}/api/v1/posts").to_return(status: 200, body: { }.to_json)

      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      stub_request(:get, "#{ENV['BLOG_1_URL']}/api/v1/posts/1").to_return(status: 200, body: { }.to_json)

      get :show, params: { id: '1' }
      expect(response).to be_successful
    end
  end
end
