class CreateProdutos < ActiveRecord::Migration
  def self.up
    create_table :produtos do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor, :precision =>8, :scale => 2
      t.integer :estoqueatual
      t.integer :estoquemin
      t.boolean :ativo, :default =>true

      t.timestamps
    end
  end

  def self.down
    drop_table :produtos
  end
end