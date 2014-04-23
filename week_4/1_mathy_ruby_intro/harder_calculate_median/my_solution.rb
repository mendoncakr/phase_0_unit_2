# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution

def median (array)
	sorted_array = array.sort()
	lengthHalf = sorted_array.length / 2
	roundDown = lengthHalf.floor
	#condition for odd list length
	if (array.length % 2) != 0
		return array[roundDown]
	else
		sum = array[roundDown] + array[roundDown-1]
		average = (sum.to_f / 2.0)
		return average
	end
end


# 3. Refactored Solution



# 4. Reflection 