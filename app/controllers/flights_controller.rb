class FlightsController < ApplicationController
  before_action :buy

  def new
    @flight = Flight.new 
  end

  def find
    flight = params[:title]
    date   = params[:body]
    @flight = Flight.where(destiny: flight, date: date)
  end

  def buy
  end

end



