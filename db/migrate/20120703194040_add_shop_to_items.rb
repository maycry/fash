class AddShopToItems < ActiveRecord::Migration
  def change
    add_column :items, :shop, :string
  end
end
