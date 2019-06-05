require 'rails_helper'

RSpec.describe PostsController, type: :request do

  let(:my_post) { build(:post) }

  before do
    cookies['token'] = SecureRandom.hex
  end

  describe "index page" do
    it "returns a success response" do
      stub_request(:get, "#{ENV['BLOG_1_URL']}/api/v1/posts").to_return(status: 200, body: { data: [my_post] }.to_json)

      get posts_path
      expect(response).to be_successful
      expect(response.body).to include(my_post[:attributes][:title])
    end
  end

  describe "show page" do
    it "returns a success response" do
      stub_request(:get, "#{ENV['BLOG_1_URL']}/api/v1/posts/#{my_post[:id]}").to_return(status: 200, body: { data: my_post }.to_json)

      get post_path(my_post[:id])
      expect(response).to be_successful
      expect(response.body).to include(my_post[:attributes][:title])
    end
  end
end
