class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients, {:id => false, :force => true} do |t|
      t.references :recipe, index: true
      t.references :ingredient, index: true
      t.timestamps
    end
  end
end
