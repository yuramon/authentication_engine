module AuthenticationEngine
  class ApplicationController < ActionController::Base
    include Authenticable
  end
end
