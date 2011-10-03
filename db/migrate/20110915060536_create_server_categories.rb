class CreateServerCategories < ActiveRecord::Migration
  def change
    create_table :server_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
