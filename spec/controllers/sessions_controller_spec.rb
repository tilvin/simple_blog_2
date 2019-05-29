require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "after successful request" do
      before do
        stub_request(:any, "#{ENV['BLOG_1_URL']}/api/v1/sessions").to_return(body: { data: { attributes: { token: SecureRandom.hex } } }.to_json)
      end

      it "redirects to the posts path" do
        post :create, params: { session: { email: 'test@blog.iubenda.com', password: 'password' } }
        expect(response).to redirect_to(posts_path)
      end

      it "token be present" do
        post :create, params: { session: { email: 'test@blog.iubenda.com', password: 'password' } }
        expect(cookies['token']).to be_present
      end
    end

    context "after unauthorized request" do
      before do
        stub_request(:any, "#{ENV['BLOG_1_URL']}/api/v1/sessions").to_return(status: 401)
      end

      it "redirects to the new sessions path" do
        post :create, params: { session: { email: 'test@blog.iubenda.com', password: 'password' } }
        expect(response).to redirect_to(new_session_path)
      end

      it "token be blank" do
        post :create, params: { session: { email: 'test@blog.iubenda.com', password: 'password' } }
        expect(cookies['token']).to be_blank
      end
    end
  end

end
