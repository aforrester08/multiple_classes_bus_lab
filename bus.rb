class Bus

  attr_accessor :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
  end

  def drive()
    return "Vroom"
  end

end
