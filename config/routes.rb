Rails.application.routes.draw do
  get 'swagger' => 'doc#index'
  root 'home#index'
  mount API => '/'
end
