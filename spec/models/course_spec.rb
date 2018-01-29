require 'rails_helper'

RSpec.describe Course, type: :model do
  # Association test
  # ensuring model relationship to requests
  it { should have_many(:requests).dependent(:destroy) }
  # validations tests
  # check for columns and titles
  it { should validate_presence_of(:courseName) }
  it { should validate_presence_of(:clientName) }
  it { should validate_presence_of(:accessed) }

end
