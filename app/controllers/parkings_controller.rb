class ParkingsController < ApplicationController

  def index
    @parkings = Parking.includes(:user)
  end

  def new
    @parking = Parking.new
  end


  def create
    @parking = Parking.new(parking_params)
    if @parking.valid?
      @parking.save
      redirect_to root_path
    else
      render 'index'
    end
  end

  private

  def parking_params
   params.require(:parking).permit(:parking_number, :parking_fee, :parking_detail, :image).merge(user_id: current_user.id,build_id: params[build.id])
  end

end
