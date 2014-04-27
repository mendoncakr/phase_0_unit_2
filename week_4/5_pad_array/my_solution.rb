# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? 
	# One is the integer for the # of spaces to be added to the array
	# Second is an optional argument of any data type that is the item to be added. Default is nil
# What is the output? (i.e. What should the code return?)
	# pad will return a copy of the original array, while pad! will return a modified version of the original array
# What are the steps needed to solve the problem?
# modify class Array
# define new method (pad)
	# 


# 2. Initial Solution
class Array

	def pad!(spaces, filler = nil)
		arrayCopy = []
		arrayLength = self.length
		newSpaces = spaces - arrayLength
		if spaces <= arrayLength 
			return self
		else
			newSpaces.times { self << filler }
			return self
		end
		puts self
	end


	def pad!(spaces, filler = nil)
		arrayLength = self.length
		newSpaces = spaces - arrayLength
		if spaces <= arrayLength 
			return self
		else
			newSpaces.times { self << filler }
			return self
		end
		puts self
	end
end



# 3. Refactored Solution



# 4. Reflection 