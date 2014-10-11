class Larica::V1::Categories < Grape::API

  # Include Grape::Kaminari module in your api
  include Grape::Kaminari

  resource :categories do

    # Annotate action with `paginate`.
    # This will add two optional params: page and per_page
    # You can optionally overwrite the default :per_page setting (10)
    # and the :max_per_page(false/disabled) setting which will use a validator to
    # check that per_page is below the given number.
    paginate :per_page => 20, :max_per_page => 30

    desc "Return all categories", {
        notes: <<-NOTE
        Example:
        --------
        Default:

            http GET http://larica-api.herokuapp.com/v1/categories.json

        With Pagination:

            http GET http://larica-api.herokuapp.com/v1/categories.json?page=3&offset=10
        NOTE
    }
    get "", http_codes: [
        [200, 'Ok', Larica::V1::Entities::CategoryResponseEntity],
        [401, "Unauthorized"]
    ] do
      categories  = Category
      present paginate(categories), with: Larica::V1::Entities::CategoryResponseEntity
    end

    desc "Return a category", {
        notes: <<-NOTE
        Example:
        --------
        Default:

            http GET http://larica-api.herokuapp.com/v1/categories/15.json
        NOTE
    }
    params do
      requires :id, type: Integer, desc: "Category id"
    end
    route_param :id do
      get "", http_codes: [
          [200, 'Ok', Larica::V1::Entities::CategoryResponseEntity],
          [401, "Unauthorized"]
      ] do
        present Category.find(params[:id]), :with => Larica::V1::Entities::CategoryResponseEntity
      end
    end

    desc "Create a category", {
        notes: <<-NOTE
        Example:
        --------
            {
              "category": {
                  "name": "Italian cuisine"
              }
            }
        NOTE
    }
    params do
      requires :category, type: Hash do
        requires :name, type: String, desc: "Category name"
      end
    end
    post '', http_codes: [
        [201, 'Ok', Larica::V1::Entities::CategoryResponseEntity],
        [401, "Unauthorized"]
    ] do
      Category.create!(params['category'])
    end

    desc "Update a category", {
        notes: <<-NOTE
        Example:
        --------
            {
              "category": {
                  "id": 15,
                  "name": "Chinese cuisine"
              }
            }

        NOTE
    }
    params do
      requires :id, type: String, desc: "Category ID"
      requires :category, type: Hash do
        requires :id, type: String, desc: "Category ID"
        requires :name, type: String, desc: "Category name"
      end
    end
    put ':id', http_codes: [
        [200, 'Ok'],
        [401, 'Unauthorized']
    ] do
      Category.find(params[:id]).update(params[:category])
    end

    desc "Delete a category", {
        notes: <<-NOTE
        Example:
        --------
            http DELETE http://larica-api.herokuapp.com/v1/categories/15.json

        NOTE
    }
    params do
      requires :id, type: String, desc: "Category ID"
    end
    delete ':id', http_codes: [
        [200, 'Ok', Larica::V1::Entities::CategoryResponseEntity],
        [401, 'Unauthorized']
    ] do
      Category.find(params[:id]).destroy
    end

  end
end
