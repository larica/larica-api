Fabricator(:user) do
  email { Faker::Internet.email }
  password { Faker::Internet.password }
  password_confirmation { |attrs| attrs[:password] }
end
