class Recipe < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  belongs_to :language
  has_many :pictures
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
end
