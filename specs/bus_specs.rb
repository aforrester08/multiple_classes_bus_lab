require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus.rb")
require_relative("../Person.rb")
require_relative("../BusStop.rb")
class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Eric", 42)
    @passenger2 = Person.new("Alex", 23)
    @bus_stop = BusStop.new("Gayfield")
  end

  def test_drive()
    assert_equal("Vroom", @bus.drive())
  end

  def test_check_number_of_passengers()
    assert_equal(0, @bus.check_number_of_passengers())
  end

  def test_bus_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.check_number_of_passengers())
  end

  def test_bus_drop_off
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.check_number_of_passengers)
  end

  def test_remove_all_passengers
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.remove_all_passengers
    assert_equal(0, @bus.check_number_of_passengers)
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@passenger1)
    assert_equal(1, @bus_stop.queue.length())
  end

  def test_pick_up_from_stop
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    @bus.pick_up_from_stop(@bus_stop)
    assert_equal(0, @bus_stop.queue.length())
    assert_equal(2, @bus.check_number_of_passengers())
  end

end
