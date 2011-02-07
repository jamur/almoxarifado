atom_feed do |feed|
feed.title "quem comprou #{@produto.nome}"
latest_pedido = @produto.pedidos.sort_by(&:updated_at).last
feed.updated( latest_pedido && latest_pedido.updated_at )
@produto.pedidos.each do |order|
feed.entry(order) do |entry|
entry.title "Order #{pedido.id}"
entry.summary :type => 'xhtml' do |xhtml|
xhtml.p "Shipped to #{order.address}"
xhtml.table do
xhtml.tr do
xhtml.th 'Produto'
xhtml.th 'Quantidade'
xhtml.th 'Total Valor'
end
for item in order.line_items
xhtml.tr do
xhtml.td item.produto.nome
xhtml.td item.quantidade
xhtml.td number_to_currency item.valor_total
end

end
xhtml.tr do
xhtml.th 'total', :colspan => 2
xhtml.th number_to_currency \
order.linha_items.map(&:total_linha).sum
end
end
xhtml.p "Paid by #{pedido.pay_type}"
end
entry.author do |author|
entry.name order.name
entry.email order.email
end
end
end
end
