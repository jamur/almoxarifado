class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.integer :server_category_id
      t.integer :siad
      t.string :phone
      t.string :email
      t.text :obs

      t.timestamps
    end
  end
end
