# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: integer
# Output: integer
# Steps:
# define class Die
# set new die to intialize with a number of sides
# raise error if less than 1
#


# 3. Initial Solution

class Die
  def initialize(sides)
  	raise ArgumentError.new("Die must have more than 1 side") unless sides > 1 
    @sides = sides
  end
  
  def sides
  	@sides
  end
  
  def roll
   	rand(1..@sides)
  end
end

sides = rand(1..500)
die = Die.new(sides)
# 4. Refactored Solution
#There seems to be no way I can refactor this.


# 1. DRIVER TESTS GO BELOW THIS LINE
p Die.class == Class
p die.roll <= die.sides
p die.sides	== sides

 

# 5. Reflection 
#This exercise is as basic as it gets for learning about classes, instance variables, instance methods, and ArgumentErrors. It was very straightforward
# especially since I had already done it in Chris Pine's Learn to Program ebook. Didn't learn anything new, but am really looking forward to learning lots of new things with classes!