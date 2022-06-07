# frozen_string_literal: true

module AuthenticationEngine
  class SessionsController < ApplicationController
    before_action :redirect_if_authenticated, only: %i[create new]

    def create
      @user = AuthenticationEngine::User.find_by_email(user_params[:email].downcase)

      if @user&.authenticate(user_params[:password])
        login(@user)
        redirect_to '/', flash: { notice: 'Signed in.' }
      else
        flash.now[:alert] = 'Incorrect email or password.'
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      logout
      redirect_to '/', notice: 'Signed out.'
    end

    def new; end

    private

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
