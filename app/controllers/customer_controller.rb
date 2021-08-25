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
  { payment_method: "pm_card_visa" },
)
      if confirm.status === 'succeeded'
     
        render json: { payment_status: confirm.status, confirm: confirm }
      end
    end

end
