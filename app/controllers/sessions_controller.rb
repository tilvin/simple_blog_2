class SessionsController < ApplicationController

  def new
    redirect_to posts_path if cookies[:token].present?
  end

  def create
    session_request = HTTParty.post("#{ENV['BLOG_1_URL']}/api/v1/sessions",
      body: {
        email: params[:session][:email],
        password: params[:session][:password]
      }
    )

    if session_request.code.to_i == 200
      token = JSON.parse(session_request.body).dig('data', 'attributes', 'token')
      cookies[:token] = token

      redirect_to posts_path
    else
      redirect_to new_session_path
    end
  end

  def sign_out
    cookies[:token] = nil
    redirect_to new_session_path
  end
end
