class Reservation < ActiveRecord::Base
  attr_accessible :credit_card, :departs_on, :flight_id, :user_id

  belongs_to :flight
  belongs_to :user

  # TODO: validate the credit card

  validates_presence_of :flight_id
  validates_presence_of :user_id

  validate :accept_visa_only

  def accept_visa_only
    unless self.credit_card.starts_with?("4") && self.credit_card.length == 16
      errors.add(:credit_card, "must be a Visa Card")
    end
  end

end
