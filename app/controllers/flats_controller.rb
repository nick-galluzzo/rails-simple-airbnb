class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def new
    @flat = Flat.new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
