
class OrderMailerPreview < ActionMailer::Preview
  def order_email
    OrderMailer.order_email(@order)
  end
end