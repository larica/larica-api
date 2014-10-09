Fabricator(:ingredient) do
  name { Faker::Commerce.product_name }
  metrics { "#{Faker::Number.digit} Faker::Lorem.word" }
  language
end
