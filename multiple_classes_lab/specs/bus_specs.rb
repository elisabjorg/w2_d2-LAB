require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")
require_relative("../bus_stop")

class BusTest < MiniTest::Test

  def setup
    @passenger_1 = Person.new("Abi", 25)
    @passenger_2 = Person.new("George", 30)
    @bus = Bus.new("22", "Portobello")
  end

  def test_drive
    assert_equal("Hello! I am a bus!", @bus.drive())
  end

  def test_number_of_passengers
    assert_equal(0, @bus.passengers().count())
  end

  def test_pick_up_passenger()
    @bus.pick_up(@passenger_1)
    assert_equal(1, @bus.passengers().count())
  end

  def test_pick_up_two_passengers
    @bus.pick_up(@passenger_1)
    @bus.pick_up(@passenger_2)
    assert_equal(2, @bus.passengers().count())
  end

  def test_drop_off_passenger
    @bus.pick_up(@passenger_1)
    @bus.pick_up(@passenger_2)
    @bus.drop_off(@passenger_1)
    assert_equal(1, @bus.passengers().count())
  end

  def test_empty_bus
    @bus.pick_up(@passenger_1)
    @bus.pick_up(@passenger_2)
    @bus.empty_bus()
    assert_equal(0, @bus.passengers().count())
  end

  def test_pick_up_from_stop()
    @stop_1 = BusStop.new("Princess Street")
    @stop_1.add_to_queue(@passenger_1)
    @bus.pick_up_from_stop(@stop_1)
    assert_equal(1, @bus.passengers().count())
    assert_equal(0, @stop_1.queue().length())
  end

  end
