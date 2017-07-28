class MatchesController < ApplicationController
  def index
    @matches = Match.where(user: current_user)
  end

  def new
    @match = Match.new
    @request = Request.find(params[:request_id])
    @match.request = @request
    @match.user = current_user

    if @match.save
      flash[:notice] = "You have a match now! Good luck!"
      redirect_to matches_path
    end
  end

  def destroy
  end

end
