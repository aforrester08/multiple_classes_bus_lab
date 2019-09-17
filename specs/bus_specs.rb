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

end
