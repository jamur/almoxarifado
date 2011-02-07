class CreatePedidos < ActiveRecord::Migration
  def self.up
    create_table :pedidos do |t|
      t.string :nome
      t.text :endereco
      t.string :email
      t.string :pagamento

      t.timestamps
    end
  end

  def self.down
    drop_table :pedidos
  end
end
