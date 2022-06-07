require 'bcrypt'

module AuthenticationEngine
  class Engine < ::Rails::Engine
    isolate_namespace AuthenticationEngine
  end
end
