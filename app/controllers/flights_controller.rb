class FlightsController < ApplicationController
  def index

    if params[:keyword].present?
      keyword = params[:keyword].downcase
      @flights = Flight.where("LOWER(departure_airport) LIKE ? OR LOWER(arrival_airport) LIKE ?",
                                "%#{keyword}%", "%#{keyword}%")
      @flights = @flights.order('number asc')
    else
      @flights = Flight.order('number asc')
    end
    @flights = @flights.paginate(:page => params[:page], :per_page => 7)

  end
end
