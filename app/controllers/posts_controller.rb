class PostsController < ApplicationController

  before_action :identify_user

  def index
    response = HTTParty.get("#{ENV['BLOG_1_URL']}/api/v1/posts", headers: auth_token)
    @posts = JSON.parse(response.to_s)['data']
  end

  def show
    response = HTTParty.get("#{ENV['BLOG_1_URL']}/api/v1/posts/#{params[:id]}", headers: auth_token)
    @post = JSON.parse(response.to_s)['data']
  end

end
