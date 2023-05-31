class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :time_to_prepare
      t.string :ingredients
      t.string :recipe_type

      t.timestamps
    end
  end
end
