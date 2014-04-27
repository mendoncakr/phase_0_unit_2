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
	def pad(spaces, filler = nil)
		arrayCopy = []
		self.each do |element| arrayCopy << element end
		arrayLength = self.length
		newSpaces = spaces - arrayLength
		if spaces <= arrayLength 
			return self
		else
			newSpaces.times { arrayCopy << filler }
			return arrayCopy
		end
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
	end
end

arr1 = [1,2,3]
arr2 = [1,2,3]
#tests for non-destructive method
p arr1.pad(0) == arr1
p arr1.pad(3) == arr1
p arr1.pad(5) == [1,2,3,nil,nil]
p arr1.pad(5, "apple") == [1,2,3,"apple","apple"]
p arr1.length == 3

#tests for destructive method
p arr2.pad(0) ==  arr2
p arr2.pad(4) == [1,2,3,nil]
p arr2.pad(5) ==  [1,2,3,nil, nil]
p arr2.pad!(7, "apple") == [1, 2, 3, "apple", "apple", "apple", "apple"]
p arr2.length == 7

# 3. Refactored Solution



# 4. Reflection 