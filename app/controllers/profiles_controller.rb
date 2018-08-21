class ProfilesController < ApplicationController

  # GET /profile
  def index
    if params[:type] == "host"
      @meetups = current_user.meetups
    else
      @meetups = current_user.guest_meetups
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

