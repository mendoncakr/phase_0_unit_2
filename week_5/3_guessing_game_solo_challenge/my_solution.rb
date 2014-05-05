# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: integer
# Output: return either a boolean or 
# Steps:
# initialize class with integer that is the answer
# define two separate methods, #guess and #solved?
# #guess will return :low, :high, or :correct depending on the answer and also change the status of @solved variable to true or false
# solved? will return the value of @solved when called.





# 3. Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#   	@guess = guess

#   	if @guess < @answer
#       @solved = false
#   		return :low
#   	elsif @guess > @answer
#       @solved = false
#   		return :high
#   	else @guess == @answer
#       @solved = true
#   		return :correct   
#     end
# end

#   def solved?
#     return @solved
#   end
# end

# 4. Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    guess == @answer ? @solved = true : @solved = false
    return :low if guess < @answer
    return :high if guess > @answer
    return :correct if guess == @answer
  end

  def solved?
    @solved
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10) 
p game.solved? == false
p game.guess(5) == :low
p game.guess(20) == :high
p game.solved? == false
p game.guess(10) == :correct
p game.solved? == true
# 5. Reflection 
# The hardest part about this challenge for me was determining what kind of variable I should use for the solved boolean and where the best place to put it was.
# It was through trial and error of using global, local, and instance variables that I finally discovered that an instance variable were my best bet because
# I also had some trouble refactoring as I couldn't quite do what I had imagined. I wanted to consolidate the conditional statements of on lines
# 53-61 to be only on one line. I wasn't succesful in having both of the pieces of code function on one line while also having the conditionals work.
#
# i.e. @solved = true && return :low if @guess < @answer

