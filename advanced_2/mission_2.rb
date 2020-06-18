class Car
  def get_km(info)
    find_km(info)
  end

  private

  def find_km(info)
    puts /\d{2,}km{2}\/h/.match(info)
  end
end

info = 'Um fusca de cor amarela viaja a 80km/h'

car = Car.new
car.get_km(info)