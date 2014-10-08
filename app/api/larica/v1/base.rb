module Larica
  module V1
    class Base < Grape::API

      version 'v1', using: :path

      before do
        # authenticate!
      end

      mount Languages


    end
  end

end
