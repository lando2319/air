class User < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation, :email

  has_secure_password

  has_many :reservations

end
