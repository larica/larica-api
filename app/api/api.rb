require 'grape-swagger'

class API < Grape::API
  rescue_from :all, :backtrace => true
  format :json
  mount Larica::V1::Base
end
