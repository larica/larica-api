source 'https://rubygems.org'

ruby '2.1.2'

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


gem 'spring',        group: :development
gem 'foreman'

gem 'carrierwave'
gem 'mini_magick'

gem 'devise'
gem 'cancancan'
gem 'rolify'
gem 'kramdown'

# API
gem 'grape'
gem 'grape-swagger'
gem 'grape-swagger-rails'
gem 'grape-kaminari'
gem 'rack-cors', :require => 'rack/cors'
gem 'grape-entity'
