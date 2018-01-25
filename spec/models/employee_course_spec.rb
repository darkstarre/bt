require 'rails_helper'

RSpec.describe EmployeeCourse, type: :model do
  # Association Test
  # relationships test
  it {should belong_to (:course )}
  it {should belong_to (:employee)}

  # validation test
  # columns
  it {should validate_presence_of(:id)}
  it {should validate_presence_of(:employeeID)}
  it {should validate_presence_of(:courseID)}
end
