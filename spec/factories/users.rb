FactoryBot.define do
  factory :users do
    groupID { Faker::Lorem.number }
    licenseID { Faker::Lorem.number }
    groupHint { Faker::Lorem.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    firstName { Faker::Name.first_name }
    lastName { Faker::Name.last_name }
    lastLogin { Faker::Date.backward }
    created { Faker::Date.backward }
    modified { Faker::Date.backward }
    timezone { Faker::Address.time_zone }
    passwordExpires { Faker::Date.forward }
    verifyToken { Faker::Crypto.md5 }
    is_enabled { Faker::Number.between(0,1) }
    is_verified { Faker::Number.between(0,1) }
  end
end

