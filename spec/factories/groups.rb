FactoryBot.define do
  factory :groups do
    name {Faker::Lorem.word}
    #alias {Faker::Lorem.word}
    landing_url {Faker::Lorem.word }
  end
end
