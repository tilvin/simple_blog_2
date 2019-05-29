module ApplicationHelper

  def current_user?
    cookies[:token].present?
  end
  
end
