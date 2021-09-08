class ReceiptMailer < ApplicationMailer

  def sale_email

    @email = params[:email]
    @data = params[:data]
    # byebug

    mail(to: params[:email], subject: "Payment Confirmation - invoice")
  end
end
