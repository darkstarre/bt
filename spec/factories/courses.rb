require 'faker'

FactoryBot.define do
  factory :course do
    courseName {Faker::Lorem.word}
    clientName {Faker::Lorem.word}
    accessed {Faker::Number.number(3).to_i.days}
    modified {Faker::Date.backward}
    created_at {Faker::Date.backward}
    updated_at{Faker::Date.backward}
  end
end
