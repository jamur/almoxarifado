class AddQuantidadeToLinhaItem < ActiveRecord::Migration
  def self.up
    add_column :linha_items, :quantidade, :integer, :default => 1
  end

  def self.down
    remove_column :linha_items, :quantidade
  end
end
