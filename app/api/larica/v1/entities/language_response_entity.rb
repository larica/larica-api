module Larica::V1::Entities
  class LanguageResponseEntity < Grape::Entity
    expose :id
    expose :name
    expose :created_at
    expose :updated_at
  end
end
