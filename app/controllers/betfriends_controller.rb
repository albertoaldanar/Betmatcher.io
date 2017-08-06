class BetfriendsController < ApplicationController
  def index
    @betfriends = Betfrined.all
  end

  def new
    @betfriend = Betfriend.new
    @request = Rbfriend.find(params[:rbfriend_id])
    @betfriend.rbfriend = @request
    @betfriend.friend_a = @request.user
    @betfriend.friend_b = @request.send
    if @betfriend.save
      # redirect_to user_path(current_user)
      redirect_to user_path(@betfriend.friend_a)
    end
  end

  def destroy

  end


end
