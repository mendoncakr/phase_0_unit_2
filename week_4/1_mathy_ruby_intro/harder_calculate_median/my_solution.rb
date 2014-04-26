# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? Input is an array of numbers
# What is the output? (i.e. What should the code return?) Code should return the middle item of the array
# What are the steps needed to solve the problem?
# define method
# sort array
# find length of array and divide by 2
# bring length of array down to nearest whole number
# find out if array is even or odd
	# if odd, return element in middle position
	# if even
		# sum two middle elements
		# take average
		# return average

# 2. Initial Solution

def median(array)
	sorted_array = array.sort
	print sorted_array.to_s + "\n"
	lengthHalf = sorted_array.length / 2
	roundDown = lengthHalf.floor
	if (array.length % 2) != 0 # odd array length
		return array[roundDown]
	else
		sum = array[roundDown] + array[roundDown - 1]
		average = (sum / 2)
		return average
	end
end




# 3. Refactored Solution
def median(array)
	sorted_array = array.sort! #used destructive method because sorted array will need to be called later
	lengthHalf = sorted_array.length / 2
	roundDown = lengthHalf.floor
	if (array.length % 2) != 0 # odd array length
		return array[roundDown]
	else
		sum = array[roundDown] + array[roundDown - 1]
		average = (sum.to_f / 2.0)
		return average
	end
end


# 4. Reflection 
# I thought this challenge was much easier than the mode problem. Especially since we had
# just used JS to find the mode. One thing I'm unsure of is how to find the median with an odd
# amount of words. 
