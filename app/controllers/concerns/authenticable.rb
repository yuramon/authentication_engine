# frozen_string_literal: true

module Authenticable
  extend ActiveSupport::Concern

  included do
    before_action :current_user
    helper_method :redirect_if_authenticated
  end

  def login(user)
    reset_session
    session[:current_user_id] = user.id
  end

  def logout
    reset_session
    @current_user = nil
  end

  def redirect_if_authenticated
    redirect_to '/', alert: 'You are already logged in.' if user_signed_in?
  end

  private

  def current_user
    @current_user ||= session[:current_user_id] && AuthenticationEngine::User.find(session[:current_user_id])
  end

  def user_signed_in?
    @current_user.present?
  end
end


