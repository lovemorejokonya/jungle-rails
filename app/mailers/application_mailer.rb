class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'


  def order_email(order)
    @order = order
    @url  = "http://localhost:3000/orders/:#{order.id}"
    mail(to: order.email, subject: "Thanks for shopping at Jungle - Order details: order Number:#{order.id.to_s}")
    # the below uses the actual order template
    # mail(to: order.email,
    #      subject: 'Thanks for shopping at Jungle - Order details: order Number:'+ order.id.to_s,
    #      template_path: 'orders',
    #      template_name: 'show')
  end

end
