class PagesController < ApplicationController
  before_action :authenticate_user!, only: :home
  def landing
  end

  def home
    @sports = Sport.all
  end
end
