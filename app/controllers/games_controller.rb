class GamesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @sport = @country.sport
    @games = Game.where(country: @country.id)
  end

  def show
  end


  def top
    @top_games = Game.where(top:true)
  end
end
