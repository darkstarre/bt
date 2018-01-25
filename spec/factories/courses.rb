FactoryBot.define do
  factory :courses do
    name {Faker::Lorem.word}
    clientName {Faker::Lorem.word}
    last_accessed {Faker::Number.number(3).to_i.days}
  end
end
