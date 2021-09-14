require "stripe"
Stripe.api_key = "sk_test_51JPZAlKUlzH2P3ixCMvTZMHvmZLYvCn9j2XldVoVf4qeBgCW1bhgothKmeZ0PKG25rwUH6URfrl1svTbYn3hfO9200HQG74GDH"

class CustomerController < ApplicationController
    def create
    shipping = params['shipping']
    billing = params['billing']
    cart = params['cart']
    total_cost = 0
    sold = []

  # byebug
    cart.each do |item|
      helper = item['value'].to_i * item['price'].to_i
      total_cost =  total_cost + helper
      sold  << "#{item['value']} #{item['name']} at #{item['price']}"
    end
    hst = total_cost * 0.13
    hst = hst.floor
    # byebug
  payment_intent = Stripe::PaymentIntent.create({
  amount: total_cost + hst,
  currency: "cad",
  description: "discription of sold items: #{sold}", 
  payment_method_types: ["card"],

})

confirm = Stripe::PaymentIntent.confirm(
  payment_intent.id,
  { payment_method: "pm_card_visa",
  receipt_email: 'kylemcloughlindev@gmail.com' },
)
      if confirm.status === 'succeeded'
            ReceiptMailer.with(email: 'kylemcloughlindev@gmail.com', data: confirm).sale_email.deliver_now
        render json: { payment_status: confirm.status, confirm: confirm }
      end
    end


def inquiry 
  puts "hit inquiry"
  cart = params[:cart]
  shipping = params[:shipping]
  output = []
  cart.each do |item|
    new_item = {}
    # byebug

    new_item[:name] = item[:name]
    new_item[:value] = item[:value]
    new_item[:price] = item[:price]
    new_item[:total] = item[:value].to_i * item[:price].to_i
    test = new_item[:total]
    test = test.to_s
    test = test.split('')
    lst = test.slice!(2,2)
    new_total = [test, '.' , lst]
    new_total = new_total.join("")
    new_item[:total] = new_total
    output << new_item
  end
  
  # byebug
  NotifierMailer.with({ shipping: shipping, cart: output  }).inquiry.deliver_now
  render :ok 

end
def quote 
  puts 'hit quute';
  email = params[:email]
  number = params[:number]
  body = params[:body]
  # byebug
  NotifierMailer.with({ email: email, number: number, body: body }).quote.deliver_now
  render :ok 
end
end
