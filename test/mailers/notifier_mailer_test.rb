require 'test_helper'

class NotifierMailerTest < ActionMailer::TestCase
  test "inquiry" do
    mail = NotifierMailer.inquiry
    assert_equal "Inquiry", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "quote" do
    mail = NotifierMailer.quote
    assert_equal "Quote", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
