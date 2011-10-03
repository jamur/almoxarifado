  # encoding: utf-8
class OrderNotifier < ActionMailer::Base
  default from: 'Almoxarifado da UFPR - Litoral <almoxarifadolitoralt@ufpr.br>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
 def received(order)
    @order = order
    mail to: order.server.email, subject: 'Confirmação de retirada de Materiais do Almoxarifado UFPR - LITORAL '  do
      |format|
      format.html {render 'imprime_pedido'}
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
 def shipped(order)
  @order = order
  mail to: order.server.email, subject: 'Pragmatic Store Order Shipped'
end
end
