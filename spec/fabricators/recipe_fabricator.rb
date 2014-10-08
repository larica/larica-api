Fabricator(:recipe) do
  name { Faker::Commerce.product_name }
  preparation_time { Faker::Number.digit }
  portions { Faker::Number.digit }
  microwave { [true, false].sample }
  status { Faker::Lorem.word }
  category
  user
  language
end
