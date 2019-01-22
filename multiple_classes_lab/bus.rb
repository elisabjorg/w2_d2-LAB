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

end

end
