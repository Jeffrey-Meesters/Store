class CreateShoes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.string :name
      t.integer :price
      t.text :description
      t.string :image_tag
      t.string :color

      t.timestamps
    end
  end
end
