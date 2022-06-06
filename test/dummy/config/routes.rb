Rails.application.routes.draw do
  mount AuthenticationEngine::Engine => "/auth"
end
