require 'rails_helper'

RSpec.describe Employee, type: :model do
  # Association test
  # ensuring relationships
  # none I dont think

  #validations test
  # check for columns and titles
  it {should validate_presence_of (:firstName) }
  it {should validate_presence_of(:lastName) }
  it {should validate_presence_of(:clientName) }
  it {should validate_presence_of(:nickName) }
end
