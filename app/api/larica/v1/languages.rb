class Larica::V1::Languages < Grape::API

  # Include Grape::Kaminari module in your api
  include Grape::Kaminari

  resource :languages do

    # Annotate action with `paginate`.
    # This will add two optional params: page and per_page
    # You can optionally overwrite the default :per_page setting (10)
    # and the :max_per_page(false/disabled) setting which will use a validator to
    # check that per_page is below the given number.
    paginate :per_page => 20, :max_per_page => 30

    desc "Return all languages", {
        notes: <<-NOTE

                          Example:
                          --------
                              http GET http://localhost:3000/v1/languages.json

        NOTE
    }
    get do
      languages  = Language
      present paginate(languages), with: Larica::V1::Entities::LanguageResponseEntity
    end


  end

end