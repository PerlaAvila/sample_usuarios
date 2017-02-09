class BookingsController < ApplicationController
  
  def new
    puts @flightid = params[:flight_id]
    @user = User.new
  end

  def booking
    puts "*" * 200
    puts params[:user][:flight_id]
    @user = User.new(name: params[:user][:name], email: params[:user][:email])
    if @user.save
      @flightid = params[:user][:flight_id]
      booking = Booking.create(flight_id: @flightid)
      @user.bookings << booking
      @user.flights << Flight.find(@flightid)
      render 'ticket'
    else
      render 'new'
    end
  end

  def ticket
  end



end
