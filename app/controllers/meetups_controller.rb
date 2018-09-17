class MeetupsController < ApplicationController
  before_action :set_meetup, only: [:show, :edit, :update, :destroy, :book]
  skip_before_action :authenticate_user!, :only => [:index]

  def index

    @meetups = Meetup.all

    if params[:query].present?
      @meetups = @meetups.search_by_meetup_title_and_game_name(params[:query])
    end

    if params[:platform_id].present?
      @meetups = @meetups.joins(:game).where(games: { platform_id: params[:platform_id] })
    end

    if params[:start_date].present? && params[:end_date].present?
      @meetups = @meetups.where("date >= ? AND date <= ?", Date.strptime(params[:start_date], "%m/%d/%Y"), Date.strptime(params[:end_date], "%m/%d/%Y"))
    end

    if params[:start_time].present? && params[:end_time].present?
      @meetups = @meetups.where("start_time >= ? AND end_time <= ?", DateTime.parse(params[:start_time]), DateTime.parse(params[:end_time]))
    end

    @meetups_with_arddess = @meetups.where.not(latitude: nil, longitude: nil)
    @markers = @meetups_with_arddess.map do |meetup|
      {
        lat: meetup.latitude,
        lng: meetup.longitude#,
      }
    end
  end

  def show
    @guests = Guest.where(meetup: @meetup)
    @meetups = @meetup.user.meetups

    @guests = Guest.where(meetup:@meetup)
    @markers = [
      {
        lat: @meetup.latitude,
        lng: @meetup.longitude#,
      }
    ]
  end

  def new
    @meetup = Meetup.new
    @platforms = Platform.all
  end

  def edit
  end


  def create
    @game = Game.find(params[:game_id])
    @date = Date.strptime(params[:date], "%m/%d/%Y")
    @meetup = Meetup.new(meetup_params)
    @meetup.date = @date
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
      params.permit(:title, :description, :location, :start_time, :end_time, :date, :game_id)
    end
end
