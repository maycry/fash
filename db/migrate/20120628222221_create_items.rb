class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :name
      t.text :link
      t.text :picture
      t.decimal :price

      t.timestamps
    end
  end
end
