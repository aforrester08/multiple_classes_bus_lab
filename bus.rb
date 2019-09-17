class Bus

  attr_accessor :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Vroom"
  end

  def check_number_of_passengers()
    return @passengers.count
  end
end
