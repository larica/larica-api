require 'grape-swagger'

module Larica
  module V1
    class Base < Grape::API

      version 'v1', using: :path

      before do
        # authenticate!
      end

      mount Categories

      add_swagger_documentation api_version: 'v1',
                                hide_documentation_path: true,
                                markdown: GrapeSwagger::Markdown::RedcarpetAdapter.new
    end
  end

end
