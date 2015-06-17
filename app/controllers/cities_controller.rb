class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def new
  end

  def show
    @city = City.find params[:id]
    @logs = @city.logs.sort_by do |log|
      log.created_at
    end
    @logs.reverse!
  end

  def edit
  end

  private

  def city_params
    params.require(:city).permit(:name)
  end

end
