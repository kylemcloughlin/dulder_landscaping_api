class NotifierMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.inquiry.subject
  #
  def inquiry
   @shipping = params[:shipping]
   @cart = params[:cart]
    mail to: "kylemcloughlindev@gmail.com", subject: 'Request for supply delivery'
  end
  
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier_mailer.quote.subject
  #
  def quote
    @email = params[:email]
    @number = params[:number]
    @body = params[:body]
    mail to: "kylemcloughlindev @gmail.com", subject: 'Request for Quote'
  end
end
