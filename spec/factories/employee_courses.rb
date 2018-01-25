FactoryBot.define do
  factory :employee_courses do
    employeeID {Faker::Number.number}
    courseID {Faker::Number.number}
  end
end
