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


2. Initial Solution
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
	extra_comma = number_string_split.pop() #code was adding an extra comma, so I popped it into a variable and ignored it
	number_with_commas = number_string_split.join() # join array with insert commas to return comma separated integer
	return number_with_commas

end

# 3. Refactored Solution

def separate_comma(integer)
	num = integer
	number_string_split =  num.to_s.split("")
	zero_counter = (number_string_split.length - 1)

	if num.between?(0, 999)
		num
	end

	while zero_counter > 0
		zero_counter -= 3
		if zero_counter == 0
			index = 1
			# add comma every 4 spaces starting at index 1 until (array length - 4) == index ( I chose 4 instead of 3 because adding a comma increases array length)
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
	extra_comma = number_string_split.pop() #code is adding an extra comma, so I popped it into a variable and ignored it
	number_with_commas = number_string_split.join() # join array with insert commas to return comma separated integer
	return number_with_commas

end


puts separate_comma(100000000000000000000000000)

# 4. Reflection
# Looking back on the 2.5 hours I spent on this, I found that writing things out really helped me put the code into perspective. I find that at times when I'm stuck
# I just kind of sit there and think. I've discovered that I need to get over the phase of just sitting and thinking, and start playing aroud in IRB. I became
# a lot more efficient and effective when I was DOING rather than sitting. I've always known that, but sometimes it takes the action itself to realize it oneself.
# When I first approached this problem, I honestly had no idea how to tackle it and was a little scared that the possibility of not finishing it was there.
# I thought this was a great exercise that helped me understand loops better. I found myself at times wondering if I should use a for, while, or until loop, but soon found out ath
# i need to use a bit of everything. Although I'm sure my code is quite messy to somebody more experienced, I"m just glad it works!






