class BuildingsController < ApplicationController


  def index
    @buildings = Building.includes(:user)
   end
 
   def new
    @building = Building.new
   end
 
   def create
     @building = Building.new(building_params)
     if @building.save
     redirect_to root_path
     else
     render :new
     end
   end

   def show
    @building = Building.find(params[:id])
   end
   
   def edit
    @building = Building.find(params[:id])
   end

   def update
    @building = Building.find(params[:id])
    @building.update(building_params)
    if @building.save
    redirect_to building_path,method: :get
    else
    render :edit
    end
  end

   def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to root_path
   end

   def building_params
    params.require(:building)
          .permit(:building_name, :place_id, :address, :building_detail, :image)
          .merge(user_id: current_user.id)
  end

end
