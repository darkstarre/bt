class Employee < ApplicationRecord
  attr_accessor :employeeID, :firstName, :lastName, :nickName, :clientName

  #relationships

  #validation
  validates_presence_of :employeeID, :firstName, :lastName, :nickName, :clientName
end
