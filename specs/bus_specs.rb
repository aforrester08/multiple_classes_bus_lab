require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus.rb")
require_relative("../Person.rb")
class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Eric", 42)
    @passenger2 = Person.new("Alex", 23)
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

end
