require 'grape-swagger'

class API < Grape::API


  rescue_from :all, :backtrace => true

  format :json



  mount Larica::V1::Base

  add_swagger_documentation api_version: 'v1',
                            hide_documentation_path: true,
                            markdown: true


end
