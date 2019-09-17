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

  def pick_up(passenger)
    @passengers.push(passenger)
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def remove_all_passengers
    @passengers.clear()
  end

end
