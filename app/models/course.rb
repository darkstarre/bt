class Course < ApplicationRecord
  attr_accessor :courseName, :clientName, :last_accessed, :created, :modified 

  # relationships
  has_many :requests, dependent: :destroy

  # validation
  validates_presence_of :courseName, :clientName, :last_accessed, :created, :modified
end
