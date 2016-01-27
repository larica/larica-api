require 'grape-swagger'

class API < Grape::API
  rescue_from :all, :backtrace => true
  format :json
  mount Larica::V1::Base

  add_swagger_documentation api_version: 'v1',
                            specific_api_documentation: { desc: 'Reticulated splines API swagger-compatible endpoint documentation.' },
                            hide_documentation_path: true,
                            hide_format: true,
                            markdown: GrapeSwagger::Markdown::RedcarpetAdapter.new
end
