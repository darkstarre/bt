class Course < ApplicationRecord
  attr_accessor :name, :clientName, :last_accessed

  # relationships
  has_many :requests, dependent: :destroy

  # validation
  validates_presence_of :name, :clientName, :last_accessed
end
