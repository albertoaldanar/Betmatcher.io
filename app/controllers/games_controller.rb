class GamesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @sport = @country.sport
    @games = Game.where(country: @country.id)
  end

  def show
    @game = Game.find(params[:id])
  end


  def top
    @top_games = Game.where(top:true)
  end


  def home
    @game = Game.find(params[:id])
    @game.team_selected = @game.local
    @game.team_not_selected = @game.visit
    @game.save
    redirect_to new_game_request_path(@game)
  end

  def away
    @game = Game.find(params[:id])
    @game.team_selected = @game.visit
    @game.team_not_selected = @game.local
    @game.save
    redirect_to new_game_request_path(@game)
  end


end




