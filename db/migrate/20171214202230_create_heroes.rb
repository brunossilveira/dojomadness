class CreateHeroes < ActiveRecord::Migration[5.1]
  def change
    create_table :heroes do |t|
      t.string :name
      t.string :real_name
      t.string :description
      t.integer :health
      t.integer :armour
      t.integer :shield
      t.integer :age
      t.integer :height
      t.string :affiliation
      t.string :base_of_operations
      t.string :difficulty

      t.timestamps
    end
  end
end
