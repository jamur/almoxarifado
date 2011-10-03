class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_category_id
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2,  default: 0.0
      t.boolean :status
      t.integer :stock_qty
      t.integer :stock_min
      t.datetime :validate

      t.timestamps
    end
  end
end
