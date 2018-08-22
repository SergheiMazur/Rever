class ProfilesController < ApplicationController
  before_action :set_user, only: [:show]
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
    @host = true
    if params[:type] == "guest"
      @host = false
      another_user_bookings = Guest.where(user:@user)
      @meetups = []
      another_user_bookings.each do |booking|
        @meetups << booking.meetup
      end
    else
      @meetups = @user.meetups
    end
  end

  # GET /profile/new
  def new
    @meetup = Meetup.new
  end

  # GET /profile/1/edit
  def edit
  end

  def set_user
    @user = User.find(params[:id])
  end
end

