class BuildingsController < ApplicationController


  def index
    @buildings = Building.includes(:user)
   end
 
   def new
    @building = Building.new
   end
 
  #  def create
  #    @building = Building.new(building_params)
  #    if @building.save
  #    redirect_to root_path
  #    else
  #    render :new
  #    end
  #  end
end
