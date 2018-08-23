class GamesController < ApplicationController
  def index
    if params[:platform_id].present?
      @games = Game.where(platform_id: params[:platform_id])
    else
      @games = Games.all
    end
  end
end


