require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  context "validations" do
    it "has a valid factory" do
      expect(Fabricate.build(:ingredient)).to be_valid
    end
    it { should validate_presence_of(:name) }
    it { should belong_to(:language) }
  end
end
