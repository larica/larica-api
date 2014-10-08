require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it "has a valid factory" do
      expect(Fabricate.build(:user)).to be_valid
    end
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
    it { should validate_presence_of :password }
    it { should validate_confirmation_of :password }
  end
end
