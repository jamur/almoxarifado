class ApplicationController < ActionController::Base
  protect_from_forgery
  
private
	
	def corrente_carrinho
		Carrinho.find(session[:carrinho_id])
	rescue ActiveRecord::RecordNotFound
		carrinho = Carrinho.create
		session[:carrinho_id] = carrinho.id
		carrinho
	end
end
