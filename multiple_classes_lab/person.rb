class Person

attr_accessor :name, :age

def initialize (name, age)
  @name = name
  @age = age
end

def pick_up(person)
  @name.pick_up(person)
end


end
