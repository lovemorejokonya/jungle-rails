class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'


  def order_email(order)
    @order = order
    @url  = 'http://localhost:3000/orders'
    mail(to: @order.email, subject: 'Order details')
  end

end
