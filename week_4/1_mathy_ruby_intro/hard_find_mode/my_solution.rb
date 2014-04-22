# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

#define mode method 
	# input is array
	# output is array
# create empty array called frequency that will hold amount of times # appears in list
# iterate through array
# for each number in array count # of appearances
# append to array
# find the higher number in the array (highest = most frequent)
# determine which number it is by index

# or

#define method mode 
#input for method is an array
#create empty hash called frequency
#iterate through list of #'s
	#set hash key equal to number at each index
	#set hash value to number of times # has been counted
#iterate through frequency list
	#find key/value pair with highest value
		#if only one frequent key
			#return key
		#elsif one or more most frequent keys
			#return all keys which tie	


# 2. Initial Solution
def mode(array)
	frequency = Hash.new

	for i in array
		frequency[i] = array.count(i)
	end

	most_frequent_key = frequency.values.max
	mode_list = []

	for key, value in frequency
		if value == most_frequent_key
			mode_list << key
		end
	end
	return mode_list
end


# 3. Refactored Solution

def mode(array)
	frequency = Hash.new
	array.each do |i|
		frequency[i] = array.count(i)
	end

	most_frequent_key = frequency.values.max
	mode_list = []

	frequency.each do |key, value|
		if value == most_frequent_key
			mode_list.push(key)
		end
	end
	return mode_list
end



# 4. Reflection 
# I thought this was a great, but quite difficult challenge to get back into ruby. The challenge really helped me get a better grasp of ruby hashes and iterating through them.
# After having taken a Python class in college, I notice that tend to default to for loops, dictionaries, and other various yet similar methods/data types. It's been kinda 
# hard transitionnig out of it. When I went to refactor my code, I researched a little more into ruby docs how I could clean it up and I think I did the pretty well cleaning it up,
# however, I'm sure it could be cleaned up even more.
















