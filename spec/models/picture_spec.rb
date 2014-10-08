require 'rails_helper'

RSpec.describe Picture, type: :model do
  context "validations" do
    it "has a valid factory" do
      expect(Fabricate.build(:picture)).to be_valid
    end
    it { should validate_presence_of(:file) }
    it { should validate_presence_of(:status) }
    it { should belong_to(:recipe) }
  end
end
