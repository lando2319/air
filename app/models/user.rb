class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation

  has_secure_password

  has_many :reservations

end
