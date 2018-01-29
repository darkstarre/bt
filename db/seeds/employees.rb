# db/seeds/employees.rb

require 'faker'

Employee.transaction do
  Employee.create! do |employee|
    Employee.firstName = Faker::Name.first_name
    Employee.lastName = Faker::Name.last_name
    Employee.nickName = Faker::Nmae.name
    Employee.clientName = Faker::Compane.name
  end
end

