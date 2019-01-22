require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

  def setup
    @passenger_1 = Person.new("Abi", 25)
    @bus = Bus.new("22", "Portobello")
  end

  def test_drive
    assert_equal("Hello! I am a bus!", @bus.drive())
  end

  def test_number_of_passengers
    assert_equal(0, @bus.passengers().count())
  end

  def test_pick_up
    @bus.pick_up(@passenger_1)
    assert_equal (1, @bus.passengers)
  end

end
