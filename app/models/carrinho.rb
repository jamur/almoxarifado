class Carrinho < ActiveRecord::Base

  has_many :linha_items, :dependent => :destroy

  def adiciona_produto(produto_id)
  	corrente_item = linha_items.where(:produto_id => produto_id).first
    if corrente_item
      corrente_item.quantidade += 1
    else
      corrente_item = LinhaItem.new(:produto_id=>produto_id)
      linha_items << corrente_item
    end
    corrente_item
  end

  def total_valor
    linha_items.to_a.sum { |item| item.total_valor}
  end

  def total_items
    linha_items.sum(:quantidade)
  end

end
