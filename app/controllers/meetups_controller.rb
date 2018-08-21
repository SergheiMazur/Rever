class MeetupsController < ApplicationController
  before_action :set_meetup, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, :only => [:index]

  # GET /meetups
  def index
    @meetups = Meetup.all
  end

  # GET /meetups/1
  def show
    @guests = Guest.where(meetup:@meetup)
  end

  # GET /meetups/new
  def new
    @meetup = Meetup.new
  end

  # GET /meetups/1/edit
  def edit
  end

  # POST /meetups
  def create
    @meetup = Meetup.new(meetup_params)

      if @meetup.save
        redirect_to @meetup, notice: 'Meetup was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /meetups/1
  def update
      if @meetup.update(meetup_params)
        redirect_to @meetup, notice: 'Meetup was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /meetups/1
  def destroy
    @meetup.destroy
    redirect_to meetups_url, notice: 'Meetup was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meetup
      @meetup = Meetup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meetup_params
      params.require(:meetup).permit(:title, :location, :lat, :lng, :start_time, :end_time, :game_id, :user_id)
    end
end
