# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: integer
# Output: return either a boolean or 
# Steps:


# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
  	@guess = guess

  	if @guess < @answer
      @solved = false
  		return :low
  	elsif @guess > @answer
      @solved = false
  		return :high
  	else @guess == @answer
      @solved = true
  		return :correct   
    end
end

  def solved?
    return @solved
  end
end

# 4. Refactored Solution


game = GuessingGame.new(10) 

p game.solved? == false
p game.guess(5) == :low
p game.guess(20) == :high
p game.solved? == false
p game.guess(10) == :correct
p game.solved? == true






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
