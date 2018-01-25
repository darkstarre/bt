FactoryBot.define do
  factory :status do
   statusName { Faker::Lorem.word }
   statusShort { Faker::Lorem.word }
  end
end
