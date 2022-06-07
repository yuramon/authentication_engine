# frozen_string_literal: true

module AuthenticationEngine
  class UsersController < ApplicationController
    def create
      @user = AuthenticationEngine::User.new(user_params)

      if @user.save
        redirect_to '/', flash: { notice: 'Successfully registered' }
      else
        render :new, status: :unprocessable_entity
      end
    end

    def new
      @user = AuthenticationEngine::User.new
    end

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  end
end
