class RequestsController < ApplicationController


  def index
    @game = Game.find(params[:game_id])
    @requests = Request.where(team_selected: @game.team_not_selected)
  end

  def new
    @game = Game.find(params[:game_id])
    @requests = Request.where(team_selected: @game.team_not_selected)
    @request_c = @requests.count
    if @request_c != 0
      redirect_to game_requests_path
    else
      @game = Game.find(params[:game_id])
      @request = Request.new
    end
  end

  def create
    @request = Request.new(request_params)
    @game = Game.find(params[:game_id])
    @request.user = current_user
    @request.game = @game
    @request.team_selected = @game.team_selected
    @request.team_not_selected = @game.team_not_selected

    if @request.save
      flash[:notice] = "Your bet request has been sent, wait for a player to Match you!"
      redirect_to matches_path
    else
      render :new
    end

  end

  def destroy
  end
end

 private

  def request_params
    params.require(:request).permit(:amount, :user, :game)
  end




