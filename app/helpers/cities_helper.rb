module CitiesHelper

  def cities
    @cities = City.all
  end

  def current_city
    @current_city = City.find_by(name:current_user.current_city)
  end

end
