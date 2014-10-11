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



  end

end