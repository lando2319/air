class Flight < ActiveRecord::Base
  attr_accessible :number, :arrival_airport, :departs_at, :departure_airport, :seats
end
