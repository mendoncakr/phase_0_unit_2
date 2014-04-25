# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# Input: Integer
# Output: should return the same integer that has been separated by commas. (i.e. 1000 ==> 1,000)
# What are the steps needed to solve the problem?

# define a method called separated_commas(int) whose input is an integer
# assign the integer to a variable
# convert to string and name number_string
# split number_string
# return integer if between (0-999)

# if greater than 999
	# determine how many zeros are there after the first integer
	# Keep subtracting 3 until either 0, 1, or 2 is reached.
	# if 0, add comma from 1 index until (length # of zeroes) - three  (e.g. 1000, length = 4, first comma goes after 0 index and stops after that because)
	# if 1, add comma from 2 index until (length # of zeroes) - three 
	# if 2, add comma from 3 index until (length # of zeroes) - three 
# join array
# return number with commas!


# 2. Initial Solution
def separate_comma(integer)
	num = integer
	number_string = num.to_s
	number_string_split =  number_string.split("")
	zero_counter = (number_string_split.length - 1)
	#print zero_counter

	if num.between?(0, 999)
		num
	end

	while zero_counter > 0
	
		zero_counter -= 3


		if zero_counter == 0
			index = 1
			# add comma every 3 spaces starting at index 1 until (array length - 4) == index
			while  (index <= number_string_split.length)
				number_string_split.insert(index, ",")
				index += 4
				break if index == (number_string_split.length - 4)
			end
	
		elsif zero_counter == 1
			index = 2
			while  (index <= number_string_split.length)
				number_string_split.insert(index, ",")
				index += 4
				break if index == (number_string_split.length - 4)
			end
		elsif zero_counter == 2
			index = 3
			while  (index <= number_string_split.length)
				number_string_split.insert(index, ",")
				index += 4
				break if index == (number_string_split.length - 4)
			end
		end
	end		
	extra_comma = number_string_split.pop()
	number_with_commas = number_string_split.join()
	return number_with_commas

end


puts separate_comma(678678)

# 3. Refactored Solution



# 4. Reflection 

# insert commas depending on how many zeroes there are after the first number