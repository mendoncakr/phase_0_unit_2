# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.

# 2. Pseudocode
# define BoggleBoard class
# use methods from previous 


# 3. Initial Solution
class BoggleBoard

	def initialize(board) #initializing the instance variables
		@board = board
	end

	def create_word(*coords) #removed board from argument
		coords.map { |coords| @board[coords.first][coords.last] }.join("")
	end

	def get_row(row)
		@board[row]
	end

	def get_col(col)
		@board.map { |array| array[col] } 
	end
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# 4. Refactored Solution
# not much to refactor here, although I do like how some people used the #transpose method to access the column of the array. The ruby doc
# doesn't describe it very well, but it seems to work.


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
p boggle_board.get_row(2) == ["e", "c", "l", "r"]
p boggle_board.get_col(2) == ["a", "d", "l", "k"]
p boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock"
p dice_grid.object_id != boggle_board.object_id
print "\n"
for letter in 0...4
	p boggle_board.get_row(letter).join
end
print "\n"
for letter in 0...4
	p boggle_board.get_col(letter).join
end

# 5. Reflection 
# As simple as the challenge was, it helped me realize the differences betwen procedural programming and object oriented programming.
# With OOP, we create objects which have the ability to learn and relearn new methods or properties. On the other hand, we have procedural
# programming which is very systematic, meaning instead of giving these objects properties, we instruct to the computer line by line
# how the code interacts with each other.


