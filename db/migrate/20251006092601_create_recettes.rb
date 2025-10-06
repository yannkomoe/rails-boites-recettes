class CreateRecettes < ActiveRecord::Migration[8.0]
  def change
    create_table :recettes do |t|
      t.string :nom
      t.text :ingredients
      t.text :instructions

      t.timestamps
    end
  end
end
