class Group < ApplicationRecord
  attr_accessor :name, :alias, :landing_url

  # relationships

  #validations
  validates_presence_of :name, :alias, :landing_url
end
