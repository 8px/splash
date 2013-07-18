require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "contact_home" do
    mail = Notifier.contact_home
    assert_equal "Contact home", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
