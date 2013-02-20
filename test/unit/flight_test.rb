require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  test "a flight from ORD-JFK is 740 miles" do
    f = Flight.new
    f.departure_airport = "ORD"
    f.arrival_airport = "JFK"
    assert_equal 740, f.miles
  end

  test "a flight from ORD-LAX is 1744" do
    f = Flight.new
    f.departure_airport = "ORD"
    f.arrival_airport = "LAX"
    assert_equal 1744, f.miles
  end

  test "a flight from MDW-LAX is 1744" do
    f = Flight.new
    f.departure_airport = "MDW"
    f.arrival_airport = "LAX"
    assert_equal 1744, f.miles
  end

  test "come back to Chicago from LAX is 1744" do
    f = Flight.new
    f.departure_airport = "LAX"
    f.arrival_airport = "ORD"
    assert_equal 1744, f.miles
  end


end
