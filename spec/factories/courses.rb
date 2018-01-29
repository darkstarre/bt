require 'faker'

FactoryBot.define do
  factory :course do
    courseName {Faker::Lorem.word}
    clientName {Faker::Lorem.word}
    last_accessed {Faker::Number.number(3).to_i.days}
    modified {Faker::Date.backward}
    created {Faker::Date.backward}
  end
end
