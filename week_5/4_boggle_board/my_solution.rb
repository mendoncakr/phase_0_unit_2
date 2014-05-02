# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define create word method (inputs are the board, and as many coordinates as needed)
# using given coords, retrieve letters from board 
# join the individual strings


# Initial Solution
# class Boggle
# 	def initialize(board) #created a
# 		@board = board
# 	end
# 	def create_word(board, *coords)
# 		map = coords.map { |coords| board[coords.first][coords.last] }.join("")
# 	end
# end

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define method as get row
# input is an integer that represents the nested array
# return row's elements from global variable
# Initial Solution

# class Boggle
# 	def initialize(board) #initializing the instance variables
# 		@board = board
# 	end
# 	def create_word(board, *coords)
# 		map = coords.map { |coords| board[coords.first][coords.last] }.join("")
# 	end

# 	def get_row(row)
# 		@board[row]
# 	end

# end

# DRIVER TESTS GO BELOW THIS LINE
#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define method called get_col that retrieves a column of letters
# use enumerable method to iterate through list of arrays and return element at wanted position


# Initial Solution
class Boggle

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

boggle = Boggle.new(boggle_board)
p boggle.create_word([2,1], [1,1], [1,2], [0,3])
p boggle.create_word([0,1], [0,2], [1,2])
p boggle.get_row(0) 
p boggle.get_col(0)
p boggle.get_col(1)
# Reflection 
# There were a couple things that threw me off with this challenge. I found that accessing elements of the nested array with the get_col method
# to be the most challenging. I spent some time wondering how it would've been done. I find myself always thinking back to Python and trying for loops.
# Once I do a quick google search, I find that there are more than just one way to do things with ruby. such as #map or #collect