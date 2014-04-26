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
# return number with commas


# 2. Initial Solution
# def separate_comma(integer)
# 	num = integer
# 	number_string = num.to_s
# 	number_string_split =  number_string.split("")
# 	zero_counter = (number_string_split.length - 1)
# 	#print zero_counter

# 	if num.between?(0, 999)
# 		num
# 	end

# 	while zero_counter > 0
	
# 		zero_counter -= 3


# 		if zero_counter == 0
# 			index = 1
# 			# add comma every 3 spaces starting at index 1 until (array length - 4) == index
# 			while  (index <= number_string_split.length)
# 				number_string_split.insert(index, ",")
# 				index += 4
# 				break if index == (number_string_split.length - 4)
# 			end
	
# 		elsif zero_counter == 1
# 			index = 2
# 			while  (index <= number_string_split.length)
# 				number_string_split.insert(index, ",")
# 				index += 4
# 				break if index == (number_string_split.length - 4)
# 			end
# 		elsif zero_counter == 2
# 			index = 3
# 			while  (index <= number_string_split.length)
# 				number_string_split.insert(index, ",")
# 				index += 4
# 				break if index == (number_string_split.length - 4)
# 			end
# 		end
# 	end		
# 	extra_comma = number_string_split.pop() #code was adding an extra comma, so I popped it into a variable and ignored it
# 	number_with_commas = number_string_split.join() # join array with insert commas to return comma separated integer
# 	return number_with_commas
# end

# 3. Refactored Solution

def separate_comma(integer)
	split_number =  integer.to_s.split("")
	zero_count = (split_number.length - 1)

	if integer.between?(0, 999)
		return integer.to_s
	end

	while zero_count > 0
		zero_count -= 3
		if zero_count == 0
			index = 1 
			#first comma, will always go after the 1st digit
			# add comma every 4 spaces starting at index 1 until (array length - 4) == index
			# (I chose 4 instead of 3 because adding a comma increases array length)
			# I chose this route because the last comma will always be 3 spaces to the left of the last digit
			while  (index <= split_number.length)
				split_number.insert(index, ",")
				index += 4
				break if index == (split_number.length - 4)
			end
		elsif zero_count == 1
			index = 2
			while  (index <= split_number.length)
				split_number.insert(index, ",")
				index += 4
				break if index == (split_number.length - 4)
			end
		elsif zero_count == 2
			index = 3
			while  (index <= split_number.length)
				split_number.insert(index, ",")
				index += 4
				break if index == (split_number.length - 4)
			end
		end
	end		
	extra_comma = split_number.pop() #code is adding an extra comma, so I popped it into a variable and ignored it
	number_with_commas = split_number.join()
end

p separate_comma(1) == "1"
p separate_comma(1000) == "1,000"
p separate_comma(10000) == "10,000"
p separate_comma(100000000000) == "100,000,000,000"



# 4. Reflection
# Looking back on the 2.5 hours I spent on this, I found that writing things out really helped me put the code into perspective. 
# When I first approached this problem, I honestly had no idea how to tackle it and was a little scared that the possibility of not finishing it was there.
# I thought this was a great exercise that helped me understand loops better. I found myself at times wondering which loops to use but soon found out that
# I needed a bit of them all. After completing the challenge, I decided to browse other peoples work, and it was quite frustrating to see that people could figure this out
# in one line of code. I don't feel as comfortable with ruby methods as others seem to be, but I'm happy that I managed to get mine to work! 





