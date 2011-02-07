class CreateRetirantes < ActiveRecord::Migration
  def self.up
    create_table :retirantes do |t|
      t.string :nome
      t.string :celular
      t.string :email
      t.integer :siap
      t.integer :siad
      t.string :categoria

      t.timestamps
    end
  end

  def self.down
    drop_table :retirantes
  end
end
