module CitiesHelper

  def cities
    @cities = City.all
  end

  def current_city
    current_user.current_city
  end

end
