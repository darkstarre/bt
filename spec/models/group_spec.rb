require 'rails_helper'

RSpec.describe Group, type: :model do
  # Association Test
  # relationships
  # none to speak of
  
  # validations
  # check for columns and titles
  it {should validate_presence_of(:name) }
  it { should validate_presence_of(:alias) }
  it {should validate_presence_of(:landing_url) }
end

