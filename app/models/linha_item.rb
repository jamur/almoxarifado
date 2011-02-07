class LinhaItem < ActiveRecord::Base
belongs_to :pedido
belongs_to :produto
belongs_to :carrinho

def total_valor
produto.valor * quantidade
end


end
