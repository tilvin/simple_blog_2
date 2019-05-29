class ApplicationController < ActionController::Base

  private

  def auth_token
    { authorization: cookies[:token] }
  end

  def identify_user
    redirect_to new_session_path unless cookies[:token].present?
  end

end
