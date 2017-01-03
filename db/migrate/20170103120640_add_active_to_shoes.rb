class AddActiveToShoes < ActiveRecord::Migration[5.0]
  def change
    add_column :shoes, :active, :boolean
  end
end
