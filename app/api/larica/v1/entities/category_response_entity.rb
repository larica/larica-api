module Larica::V1::Entities
  class CategoryResponseEntity < Grape::Entity
    expose :id, documentation: { type: 'integer', desc: 'ID' }
    expose :name, documentation: { type: 'string', desc: 'Name' }
    expose :created_at, documentation: { type: 'string', desc: 'Created at' }
    expose :updated_at, documentation: { type: 'string', desc: 'Updated at' }
  end
end
