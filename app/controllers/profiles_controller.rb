class ProfilesController < ApplicationController

  # GET /profile
  def index
    @host = true
    if params[:type] == "guest"
      @host = false
      current_user_bookings = Guest.where(user:current_user)
      @meetups = []
      current_user_bookings.each do |booking|
        @meetups << booking.meetup
      end
    else
      @meetups = current_user.meetups
    end
  end

  # GET /profile/1
  def show
    @guests = Guest.where(meetup:@meetup)
  end

  # GET /profile/new
  def new
    @meetup = Meetup.new
  end

  # GET /profile/1/edit
  def edit
  end
end

