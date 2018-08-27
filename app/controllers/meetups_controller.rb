class MeetupsController < ApplicationController
  before_action :set_meetup, only: [:show, :edit, :update, :destroy, :book]
  skip_before_action :authenticate_user!, :only => [:index]

  # GET /meetups
  def index

    # for gmaps

    if params[:start_time].nil?
      @meetups = Meetup.all
      if params[:query].present?
        puts params[:query].class
        @meetups = Meetup.search_by_meetup_title_and_game_name(params[:query])
      else
        @meetups = Meetup.all
      end


    else
     @meetups = Meetup.where("start_time > ? AND end_time < ?", DateTime.parse(params[:start_time]), DateTime.parse(params[:end_time]))
    end

    @meetups_with_arddess = @meetups.where.not(latitude: nil, longitude: nil)
    @markers = @meetups_with_arddess.map do |meetup|
      {
        lat: meetup.latitude,
        lng: meetup.longitude#,
      }
    end
  end

  # GET /meetups/1
  def show
    @guests = Guest.where(meetup: @meetup)
    @meetups = @meetup.user.meetups
  end

  # GET /meetups/new
  def new
    @meetup = Meetup.new
    @platforms = Platform.all
  end

  # GET /meetups/1/edit
  def edit
  end

  # POST /meetups
  def create
    @game = Game.find_by(name: params[:meetup][:game_name])
    @meetup = Meetup.new(meetup_params)
    @platforms = Platform.all
    @meetup.user = current_user
    @meetup.game = @game
      if @meetup.save!
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


  #To Book
  def book
    @meetup.guests.create(current_status: "pending", user: current_user)
    redirect_to meetup_path(@meetup)
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
      params.require(:meetup).permit(:title, :location, :start_time, :end_time)
    end
end
