class RbfriendsController < ApplicationController
  def index
    @requests = Rbfriend.where(user: current_user)
  end

  def new
    @user = User.find(params[:user_id])
    @request = Rbfriend.new
    @request.user = @user
    @request.send = current_user
    if @request.save
      flash[:notice] = "You friend request has been sent!"
      redirect_to user_path(@user)
    end
  end

  def friends

  end

  def destroy
    @user = User.find(params[:user_id])
    @request = Rbfriend.find(params[:id])
    @request.user = @user
    @request.destroy!
    if @request.destroy
      redirect_to user_path(@user)
    end
  end
end
