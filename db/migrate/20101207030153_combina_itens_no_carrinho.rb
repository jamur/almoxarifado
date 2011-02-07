class CombinaItensNoCarrinho < ActiveRecord::Migration

def self.up
# replace multiple items for a single product in a cart with a single item
Carrinho.all.each do |carrinho|
# count the number of each product in the cart
somas = carrinho.linha_items.group(:produto_id).sum(:quantidade)
somas.each do |produto_id, quantidade|
if quantidade > 1
# remove individual items
carrinho.linha_items.where(:produto_id=>produto_id).delete_all
# replace with a single item
carrinho.linha_items.create(:produto_id=>produto_id, :quantidade=>quantidade)
end
end
end
end
def self.down
# split items with quantidade>1 into multiple items
LinhaItem.where("quantidade>1").each do |linhaitem|
# add individual items
linhaitem.quantidade.times do
LinhaItem.create :carrinho_id=>linhaitem.carrinho_id,
:produto_id=>linhaitem.produto_id, :quantidade=>1
end
# remove original item
linhaitem.destroy
end
end
end
