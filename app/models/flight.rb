class Flight < ActiveRecord::Base
  attr_accessible :number, :arrival_airport, :departs_at, :departure_airport, :seats

  MILEAGE_CHART = {
    "ORD JFK" => 740,
    "ORD LAX" => 1744,
    "ORD SFO" => 1846,
    "MDW JFK" => 740,
    "MDW LAX" => 1744,
    "MDW SFO" => 1846,
    "JFK LAX" => 2475,
    "JFK SFO" => 2586,
    "LAX SFO" => 338
  }

  def miles
    distance = MILEAGE_CHART["#{self.departure_airport} #{self.arrival_airport}"]
    if distance.nil?
      distance = MILEAGE_CHART["#{self.arrival_airport} #{self.departure_airport}"]
    end
    distance
  end

  def arrives_at

  end


  def duration

  end
end
