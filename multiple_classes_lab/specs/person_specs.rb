require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

def setup
  @person = Person.new("Daniel", 18)
end



end
