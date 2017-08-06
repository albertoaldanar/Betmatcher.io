class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @matches = Match.where(user: @user)
    @matcher_r = Match.all
    @matches_win = Match.where(status: "Won")
    @matches_tie = Match.where(status: "Tie")
    @matches_lost = Match.where(status: "Lost")
    @requests = Rbfriend.where(user: current_user)

    @betfriends = Betfriend.all
  end

  def edit
  end

  def update
  end
end


