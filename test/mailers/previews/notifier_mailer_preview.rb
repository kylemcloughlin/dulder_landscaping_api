# Preview all emails at http://localhost:3000/rails/mailers/notifier_mailer
class NotifierMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/inquiry
  def inquiry
    NotifierMailer.inquiry
  end

  # Preview this email at http://localhost:3000/rails/mailers/notifier_mailer/quote
  def quote
    NotifierMailer.quote
  end

end
