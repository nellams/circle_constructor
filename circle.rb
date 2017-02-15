### Part I

# Create a `Circle` class with a constructor that requires a single argument.
# This argument should be the `radius` of the circle.

class Circle
  attr_accessor :radius
  def initialize(radius)
    @radius = radius
  end
end

### Part II

# Create a completely different version of your `Circle` class that requires a
# single argument. This time, allow the developer to specify whether the value
# supplied is the diameter or the radius of the circle. You should only store the
# `Circle`'s radius.

class Circle
  attr_accessor :radius
  def initialize(radius_or_diameter)
    if radius_or_diameter.include?(:diameter)
      @radius = radius_or_diameter[:diameter] / 2
    else
      @radius = radius_or_diameter[:radius]
    end
  end
end

### Extra Credit: Part III

# Modify your constructor to make use of the `kind_of?` method.
# Your `Circle` class supports both setting a radius as the exclusive, numeric argument to
# the constructor and the ability to specify a diameter or radius as an option.

class Circle
  attr_accessor :radius
  def initialize(radius_or_diameter)
    if radius_or_diameter.kind_of?(Fixnum)
      @radius = radius_or_diameter
    elsif radius_or_diameter.include?(:diameter)
      @radius = radius_or_diameter[:diameter] / 2
    else
      @radius = radius_or_diameter[:radius]
    end
  end
end
