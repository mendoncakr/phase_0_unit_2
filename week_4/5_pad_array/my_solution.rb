# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself

# 1. Pseudocode

# What is the input? 
	# One is the integer for the # of spaces to be added to the array
	# Second is an optional argument of any data type that is the item to be added. Default is nil
# What is the output? (i.e. What should the code return?)
	# pad will return a copy of the original array, while pad! will return a modified version of the original array
# What are the steps needed to solve the problem?
# modify class Array
# define new method (pad)
	#  create empty array for copy
	# add each element of self to arraycopy
	# calculate array length
	# calculate # of spaces to be added
	# if new spaces is less than or equal to array length
		# return original array
	# else 
		# add number of new spaces and push new element to array copy

# for pad! do the same exact thing, except modify self, rather than have a copy of array
# 		


# 2. Initial Solution
class Array
	def pad(spaces, filler = nil)
		arrayCopy = Array.new
		self.each do |element| arrayCopy << element end
		arrayLength = self.length
		newSpaces = spaces - arrayLength
		if spaces <= arrayLength 
			return arrayCopy
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
p "non-destructive method should NOT return same object id"
p arr1.object_id
p arr1.pad(0).object_id
#tests for destructive method
p arr2.pad(0) ==  arr2
p arr2.pad(4) == [1,2,3,nil]
p arr2.pad(5) ==  [1,2,3,nil, nil]
p arr2.pad!(7, "apple") == [1, 2, 3, "apple", "apple", "apple", "apple"]
p arr2.length == 7
p "-----------------------"
p "destructive method should return same object id"
p arr2.object_id
p arr2.pad!(10).object_id





# 3. Refactored Solution



# 4. Reflection 
# I thought this was a great challenge that slightly introduced the concept of classes.
# Had I not started to begin a well grounded rubyist, it probabyl would have taken me longer
# to determine how to modify a classes methods. I was pretty confident with my ability approaching this
# challenge and only had to do minimal internet research. # I find that I work a lot in IRB as I code
# and it seems to help produce cleaner code, hence why I dont have much in the refactor solution area.


