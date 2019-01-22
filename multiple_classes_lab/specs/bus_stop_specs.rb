require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../person")


class BusStopTest < MiniTest::Test

  def setup
    @stop = BusStop.new("Piccadilly")
    @passenger_1 = Person.new("Abi", 25)
    @passenger_2 = Person.new("George", 30)
  end

  def test_add_person_to_queue
    @stop.add_to_queue(@passenger_1)
    assert_equal(1, @stop.queue().length())
  end

  def test_add_more_people_to_queue
    @stop.add_to_queue(@passenger_1)
    @stop.add_to_queue(@passenger_2)
    assert_equal(2, @stop.queue_length())
  end

  def test_clear_queue
    @stop.add_to_queue(@passenger_1)
    @stop.add_to_queue(@passenger_2)
    @stop.clear_queue()
    assert_equal(0, @stop.queue_length())
  end



end
