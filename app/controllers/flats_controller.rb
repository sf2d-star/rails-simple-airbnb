class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def new
    @restaurant = Flat.new
  end

  def creat
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :picture_url, :description, :price_per_night, :number_of_guests)
  end

end
