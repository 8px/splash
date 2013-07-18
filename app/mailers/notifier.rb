class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_home.subject
  #
  def contact_home
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
