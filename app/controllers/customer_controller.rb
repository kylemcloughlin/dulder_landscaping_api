require "stripe"
Stripe.api_key = "sk_test_51JPZAlKUlzH2P3ixCMvTZMHvmZLYvCn9j2XldVoVf4qeBgCW1bhgothKmeZ0PKG25rwUH6URfrl1svTbYn3hfO9200HQG74GDH"

class CustomerController < ApplicationController
    def create
   
  payment_intent = Stripe::PaymentIntent.create({
  amount: 2000,
  currency: "cad",
  payment_method_types: ["card"],
})

confirm = Stripe::PaymentIntent.confirm(
  payment_intent.id,
  { payment_method: "pm_card_visa" },
)
# byebug
      if confirm.status === 'succeeded'
     
        render json: { payment_status: confirm.status, confirm: confirm }
      end
    end

end
