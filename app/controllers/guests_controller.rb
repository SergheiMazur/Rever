class GuestsController < ApplicationController
  before_action :set_guest, only: [:accept, :reject]

  def new
  end

  def create
    @guest = Guest.new(user_id: current_user.id, meetup_id: params[:meetup_id])
    @guest.current_status = "Pending"
    @guest.save

    redirect_to meetup_path(params[:meetup_id])
  end

  def accept
    @guest.accept!
    redirect_to meetup_path(@guest.meetup)
  end

  def reject
    @guest.reject!
    redirect_to meetup_path(@guest.meetup)

  end

  private

  def  set_guest
    @guest = Guest.find(params[:id])
  end
end
