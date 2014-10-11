Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'
  root 'home#index'
  mount API => '/'
end
