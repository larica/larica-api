class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :preparation_time
      t.integer :portions
      t.boolean :microwave
      t.references :category, index: true
      t.references :user, index: true
      t.string :status
      t.references :language, index: true

      t.timestamps
    end
  end
end
