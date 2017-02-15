# circle_constructor

Part I

Create a Circle class with a constructor that requires a single argument. This argument should be the radius of the circle.

You should be able to replicate output similar to the following pry session using this new constructor. Remember to save this code in a circle.rb file.

$ pry
pry(main)> require_relative "circle"
=> true
pry(main)> Circle.new(4)
=> #<Circle:0x007f91658be478 @radius=4>
pry(main)> Circle.new(5.5)
=> #<Circle:0x007f9165b1fc08 @radius=5.5>
Show Solution

Part II

Create a completely different version of your Circle class that requires a single argument. This time, allow the developer to specify whether the value supplied is the diameter or the radius of the circle. You should only store the Circle's radius.

pry(main)> Circle.new({radius: 4})
=> #<Circle:0x007f9164142538 @radius=4>
pry(main)> Circle.new({radius: 5.5})
=> #<Circle:0x007f9164138c90 @radius=5.5>
pry(main)> Circle.new({diameter: 12})
=> #<Circle:0x007f916585df10 @radius=6>
You should be able to replicate output similar to the following pry session using this new constructor.

Show Hint

Show Solution

Extra Credit: Part III

Ruby allows us to check the type of an object through the use of the kind_of? method.

"a string example".kind_of?(String) => true
1.kind_of?(Fixnum) => true
[].kind_of?(Array) => true
Modify your constructor to make use of the kind_of? method. Your Circle class supports both setting a radius as the exclusive, numeric argument to the constructor and the ability to specify a diameter or radius as an option. This portion will combine the functionalities of both parts I and II.

You should be able to replicate output similar to the following pry session using this new constructor.

pry(main)> Circle.new(4)
=> #<Circle:0x007f9165b1e6a0 @radius=4>
pry(main)> Circle.new(5.5)
=> #<Circle:0x007f9165ab5010 @radius=5.5>
pry(main)> Circle.new({radius: 4})
=> #<Circle:0x007f9165a4fa08 @radius=4>
pry(main)> Circle.new({radius: 5.5})
=> #<Circle:0x007f91659eef28 @radius=5.5>
pry(main)> Circle.new({diameter: 12})
=> #<Circle:0x007f91659951a8 @radius=6>
