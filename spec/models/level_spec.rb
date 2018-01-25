require 'rails_helper'

RSpec.describe Level, type: :model do
  # Association test
  # ensuring model relationships

  # validation tests
  # check for columns
  it {should validate_presence_of(:levelName) }
end
