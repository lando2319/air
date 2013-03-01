class ReservationMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.confirm.subject
  #
  def confirm(reservation)
    @reservation = reservation

    mail to: reservation.user.email, subject: "Your Itinerary"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reservation_mailer.canceled.subject
  #
  def canceled
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
