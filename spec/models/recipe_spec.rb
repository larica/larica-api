require 'rails_helper'

RSpec.describe Recipe, type: :model do
  context "validations" do
    it "has a valid factory" do
      expect(Fabricate.build(:recipe)).to be_valid
    end
    it { should validate_presence_of :name }
    it { should validate_presence_of :preparation_time }
    it { should validate_numericality_of :preparation_time }
    it { should validate_presence_of :portions }
    it { should validate_numericality_of :portions }
    it { should validate_presence_of :status }
    it { should belong_to :category }
    it { should belong_to :user }
    it { should belong_to :language }
    it { should have_many :pictures }
    it { should have_many(:ingredients).through(:recipe_ingredients) }
  end
end
