class Item < ActiveRecord::Migration[7.0]
  def change
    remove_column :items, :category_id, :string
  end
end
