class BuscaController < ApplicationController
  def index
    @produtos = Produto.all
  end
end
