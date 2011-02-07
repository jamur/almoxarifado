class ArmazemController < ApplicationController
  def index
  @produtos = Produto.where(:ativo =>true)
  @carrinho = corrente_carrinho
  end
end
