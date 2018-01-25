require 'rails_helper'

RSpec.describe User, type: :model do
  # Association Test
  # no relationships
  #
  # Validation Tests
  # columns
  it { should validate_presence_of(:groupID)}
  it { should validate_presence_of(:licenseID)}
  it { should validate_presence_of(:groupHint)}
  it { should validate_presence_of(:email)}
  it { should validate_presence_of(:password)}
  it { should validate_presence_of(:firstName)}
  it { should validate_presence_of(:lastName)}
  it { should validate_presence_of(:lastLogin)}
  it { should validate_presence_of(:created)}
  it { should validate_presence_of(:modified)}
  it { should validate_presence_of(:timezone)}
  it { should validate_presence_of(:passwordExpires)}
  it { should validate_presence_of(:verifyToken)}
  it { should validate_presence_of(:is_enabled)}
  it { should validate_presence_of(:is_verified)}
end
