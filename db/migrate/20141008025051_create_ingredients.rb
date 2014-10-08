class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :metrics
      t.references :language, index: true

      t.timestamps
    end
  end
end
