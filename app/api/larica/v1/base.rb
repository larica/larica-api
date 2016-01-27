require 'grape-swagger'

module Larica
  module V1
    class Base < Grape::API

      version 'v1', using: :path

      before do
        # authenticate!
      end

      mount Categories
      
    end
  end

end
