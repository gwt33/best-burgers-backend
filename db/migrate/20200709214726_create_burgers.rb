class CreateBurgers < ActiveRecord::Migration[6.0]
  def change
    create_table :burgers do |t|
      t.integer :restaurant_id
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
