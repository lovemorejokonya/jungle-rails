class ApplicationMailer < ActionMailer::Base
  default from: "no-reply@jungle.com"
  layout 'mailer'


  def order_email(order)
    @order = @order
    @url  = 'http://localhost:3000/orders'
    mail(to: "lovemorejokonya@gmail.com", subject: 'Order details')
    # the below uses the actual order template
    # mail(to: "lovemorejokonya@gmail.com",
    #      subject: 'Order details',
    #      template_path: 'orders',
    #      template_name: 'show')
  end

end
