class RequestsController < ApplicationController

  def choice
    @requests = Request.count
    if @requests == 0
      index
      else
        new
    end
  end


  def index

  end

  def new
  end

  def create
  end

  def destroy
  end
end
