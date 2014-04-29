class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
  helper_method :resource, :resource_name, :devise_mapping
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def layout_by_resource
    if devise_controller?# && resource_name == :user && action_name == 'sign_in'
      "content"
    else
      "application"
    end
  end
end
