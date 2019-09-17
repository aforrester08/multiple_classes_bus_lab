require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
class BusTest < MiniTest::Test

  def setup()
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_drive()
    assert_equal("Vroom", @bus.drive())
  end

  def test_check_number_of_passengers()
assert_equal(0, @bus.check_number_of_passengers())
  end

end
