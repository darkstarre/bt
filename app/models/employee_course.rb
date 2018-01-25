class EmployeeCourse < ApplicationRecord
  attr_accessor :id, :courseID, :employeeID

  # relationships
  belongs_to :course
  belongs_to :employee

  #validation
  validates_presence_of :id, :courseID, :employeeID
end
