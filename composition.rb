# When do we use ruby module vs using class composition?

# 1. COMPOSITION (moulding your objects for what they do)
## Class composition - 'has-a' relationship
# a Person has a Car

class Person
  def initialize
    @car = Car.new
  end
end

class Car
  def accelerate
    # code
  end
end

## Module composition - 'acts-like' relationship
module Switcher
  def turn_of
    puts 'Switched Off'
  end

  def turn_on
    puts 'Switched On'
  end
end

class Car
  include Switcher
end

class Computer
  include Switcher
end

# 2. INHERITENCE - 'is-a' relationship (moulding your objects for what they are)
# Check inheritence.rb
