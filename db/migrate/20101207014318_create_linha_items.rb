class CreateLinhaItems < ActiveRecord::Migration
  def self.up
    create_table :linha_items do |t|
      t.integer :produto_id
      t.integer :carrinho_id

      t.timestamps
    end
  end

  def self.down
    drop_table :linha_items
  end
end
