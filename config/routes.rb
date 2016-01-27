Rails.application.routes.draw do
  root 'home#index'
  mount API => '/'

  mount Sidekiq::Web => '/sidekiq-manager'
  
end
