# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself

# 2. Pseudocode

# Input: array of strings
# Output: random string from input
# Steps:
# define initialize method
	# raise error if length of input array is 0
# define sides method
	# return length of instance variable
# define roll method
	# return random string from array	


# 3. Initial Solution
=begin
class Die
  def initialize(labels)
  	raise ArgumentError.new("Please enter an array with strings") if (labels.length == 0)
  	@sides = labels
  end

  def sides
  	@sides.length
  end

  def roll
  	return @sides[rand(@sides.length)]
  end
end
=end

# 4. Refactored Solution
class Die
  def initialize(labels)
  	raise ArgumentError.new("Please enter an array with strings") if (labels.length == 0)
  	@sides = labels
  end

  def sides
  	@sides.length
  end

  def roll
  	@sides.sample #rather than use random to find random index, I used Array#sample to give me a random element in array.
  	end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

# 1. DRIVER TESTS GO BELOW THIS LINE

p die.sides == 6
p die.roll


# 5. Reflection 
# I thought this was quite easy as well. Not so much a challenge than an exercise. Not much I can or want to say about it, other than
# the fact that it seems that working with instance variables can get a little confusing if not tracked properly.
