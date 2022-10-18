class ParkingsController < ApplicationController

  def index
    @buildings = Building.includes(:user)
  end

  

end
