require 'rails_helper'

RSpec.describe Status, type: :model do
  #test suite for the status model
  # Association test
  # relationships

  #validation tests
  # ensure existing columns
  it { should validate_presence_of(:statusName)}
  it {should validate_presence_of(:statusShort)}
end
