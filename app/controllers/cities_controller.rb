class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def new
  end

  def show
    @city = City.find params[:id]
    @logs = @city.logs.order created_at: :desc
  end

  def edit
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end

end
