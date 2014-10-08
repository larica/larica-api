require 'rails_helper'

RSpec.describe Category, type: :model do
  context "validations" do
    it "has a valid factory" do
      expect(Fabricate.build(:category)).to be_valid
    end
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
    it { should have_many :recipes }
  end
end
