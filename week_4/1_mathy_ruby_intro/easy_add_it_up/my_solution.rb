# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode for total
# define total method that adds items of a list
# input should be an array
# output should be number

# Pseudocode for sentence_maker
# define sentence_maker method whose input is an array
# iterate through array and join each string with a space
# add period to end of list
# capitalize first letter

# 2. Initial Solution

def total(array)
	sum = 0
	array.each {|num| sum += num}
	return sum
end

def sentence_maker(array)
	array << '.' 				#append period to end of list
	sentence = array.join(' ')  #
	sentence.capitalize
end

# 3. Refactored Solution
def sentence_maker(array)
	sentence = array.join(' ')
	return (sentence.capitalize + '.')
end

# 4. Reflection 
# Since it's been over 3 weeks and I haven't had much ruby practice this little exercise was great at getting me back into the groove of ruby.
# I completed this exercise quite quickly with only minimal research of the internet for array methods, but when I went to test my code, I was getting 4 errors.
# For some reason, I thought this was an error with RSPEC and spent ~45 minutes trying to determine if it was installed correctly. Turns out it was 
# installed correctly, but that my code was wrong! I had a puts statement instead of return! That was definitely the most frustrating part.