GrapeSwaggerRails.options.url      = '/v1/swagger_doc'

if Rails.env.production?
  base_url = 'http://larica-api.herokuapp.com'
else
  base_url = 'http://localhost:3000'
end

GrapeSwaggerRails.options.doc_url = "/swagger"
GrapeSwaggerRails.options.app_url  = base_url
GrapeSwaggerRails.options.api_key_name = 'token'
GrapeSwaggerRails.options.api_key_type = 'query'
GrapeSwaggerRails.options.app_name = 'Larica API'
