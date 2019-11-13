class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new

    redirect_to flat_path(@flat)
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save
  end

  def edit
  end

  def show
  end

  def update
    @flat.update(params[:flat])

    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :photo_url)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
