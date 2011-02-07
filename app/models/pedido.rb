class Pedido < ActiveRecord::Base
has_many :linha_items, :dependent => :destroy
belongs_to :retirante
PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
validates :retirante_id, :endereco, :email, :pagamento, :presence => true
validates :pagamento, :inclusion => PAYMENT_TYPES


def adiciona_linha_items_do_carrinho(carrinho)
  carrinho.linha_items.each do |item|
  item.carrinho_id = nil
  linha_items << item
  end
end

end
