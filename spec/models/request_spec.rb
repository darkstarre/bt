require 'rails_helper'

RSpec.describe Request, type: :model do
  #association test
  #ensure model relationship

  it { should validate_presence_of(:requester) }
  it { should validate_presence_of(:courseID) }
	it { should validate_presence_of(:pageName) }
	it { should validate_presence_of(:statusID) }
	it { should validate_presence_of(:levelID) }
	it { should validate_presence_of(:detail) }
	it { should validate_presence_of(:assignTo) }
	it { should validate_presence_of(:solution) }
	it { should validate_presence_of(:isReadyForQA) }
	it { should validate_presence_of(:isQAVerified) }
	it { should validate_presence_of(:dateStampReadyQA) }
	it { should validate_presence_of(:platform) }
	it { should validate_presence_of(:browser) }
	it { should validate_presence_of(:version) }
	it { should validate_presence_of(:created) }
	it { should validate_presence_of(:modified) }
	it { should validate_presence_of(:applauseID) } 
end
