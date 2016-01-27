source 'https://rubygems.org'

gem 'rails', '4.1.6'


group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'guard-rspec'
  gem 'dotenv-rails'
  gem 'pry'
end

group :development do
  gem 'brakeman', require: false
end

group :test do
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem 'nyan-cat-formatter'
  gem 'simplecov', :require => false
  gem 'coveralls'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'turn', :require => false
end

group :development, :test, :production do
  # gem "factory_girl_rails"
  gem 'fabrication'
  gem 'faker'
end


gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'spring',        group: :development
gem 'foreman'
gem 'rubocop', require: false
gem 'carrierwave'
gem 'mini_magick'

gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'kramdown'

# Background Jobs
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'sinatra', require: false
gem 'whenever', require: false

gem 'rails_12factor', group: :production

# API
gem 'grape'
gem 'grape-swagger'
gem 'grape-kaminari'
gem 'rack-cors', :require => 'rack/cors'
gem 'grape-entity'
gem 'redcarpet'
gem 'rouge'
gem 'hashie-forbidden_attributes'
