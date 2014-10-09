Fabricator(:picture) do
  file { Faker::Avatar.image }
  status { Faker::Lorem.word }
  recipe
end
