class Bus

attr_accessor :route, :destination, :passengers

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive ()
    return "Hello! I am a bus!"
  end

  def pick_up(person)
    @passengers << person
  end

  def drop_off(person)
    index = @passengers.index(person)
    @passengers.slice!(index, 1)
  end

  def empty_bus()
    @passengers.clear()
  end 
end
