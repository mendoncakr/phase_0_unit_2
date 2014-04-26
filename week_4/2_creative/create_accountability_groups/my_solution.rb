# U2.W4: Create Accountability Groups

# I worked on this challenge by myself.

# 2. Pseudocode

# Input: array of names 
# Output: array containing groups 4 or 5 for three units
# Steps:

# create tests
# 
# Define method group_creator
# Declare variables (accountability group, variables, etc)
# Determine if input is divisible by 4
	# If yes, ?
	# Else, ?
# Shuffle list destructively 	
# Iterate through list of names
	# Pop last item into one list 4 times
	# Add until list contains 4 names
	# Keep adding names until less than 4 remain
# Add remaining names to other lists	



# 3. Initial Solution
list = [
	"Kenneth Mendonca",
	"Yariv Kirschner",
	"Jake Wayne",
	"Christian Moon",
	"Adian Soghoian",
	"Armen Vartan",
	"Drew Teter",
	"RJ Arena",
	"Gabe Garrett",
	"Antonio Perez",
	"Ben Brostoff",
	"Ian Shuff",
	"Side Patel",
	"Adam Hardy",
	"Lexie Ernst",
	"Stella Kim",
	"Brendan Susens-Jackson",
	"Vivek George",
	"Gregory Piccolo",
	"Katie Reiner",
	"Timoor Kurdi",
	"Daniel Kim",
	"Nick Giovacchini",
	"Matthieu Gavaudan"
]

def group_creator(name_list)

	accountability_groups = []
	randomized_names = name_list.shuffle #Used non-destructive shuffle so that I can call on list again for unit 2/3

	while (randomized_names.length > 4)
		accountability_groups << randomized_names.pop(4)
		break if randomized_names.length  <= 3		
	end

	counter = 0
	until (randomized_names.length == 0)
		accountability_groups[counter] << randomized_names.pop
		counter	+= 1
	end
	
	counter = 0
	until accountability_groups[counter] == nil
		puts "Group " + (counter + 1).to_s + ":" ; puts accountability_groups[counter]
		puts
		counter += 1 
	end
end


puts "----------Unit 1----------"
print group_creator(list)
puts "----------Unit 2----------"
print group_creator(list)
puts "----------Unit 3----------"
print group_creator(list)

# 4. Refactored Solution
# I found that I kept refactoring my code on the go as I went along. Changing A LOT of everything quite often. 
# Some things I could still change are:
# 1. Having the program write out "Group-X: person1, person2, person3, person4, (person5?)"
# 2. Shortening variable names
# 3. Adding values to name
# Deleted the break at line 69 as its redundant 

def group_creator(name_list)

	accountability_groups = []
	randomized_names = name_list.shuffle #Used non-destructive shuffle so that I can call on list again for unit 2/3

	while (randomized_names.length > 4)
		accountability_groups << randomized_names.pop(4)	
	end

	counter = 0
	until (randomized_names.length == 0)
		accountability_groups[counter] << randomized_names.pop
		counter	+= 1
	end
		
	counter = 0
	until accountability_groups[counter] == nil
		puts "Group " + (counter + 1).to_s + ":" ; puts accountability_groups[counter]
		puts
		counter += 1 
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE
# I couldn't think of any driver tests to write as the outputs are random every time
# However, I did include a few RSPEC tests in the 'group_spec.rb' file


# 5. Reflection 

# Completing this challenge was extremely satisfying. I spent nearly 4 hours trying to figure it out. I feel like I learned A LOT about
# while and until loops and definitely got a firm understanding of them. Some problems I encountered were deciding how to deal with the remaining names after the maximum
# amount of 4 person groups were created and pretty much mut the overall approach of the problem. After messing around quite a bit in IRB, i decided to go one route. Then after
# about 20 minutes, I would think of something else, try it, and change my route  Eventually, I came to what you see above. It was quite a haphazard way to approach
# the challenge, and I ended up not making tests till the end.

# When I finished  my initial code, I re-read the directions and thought about how I would create different groups for the other 2 units without having the same
# person in the group more than once. Initially, I had no clue and decided to ask my roommate how to approach it. She had suggested a way that I will try this weekend.
# She suggested to "add a unique value to the members' name and then create new lists with people who have different values". I think she's 95% correct! The first thing that
# popped into my head was to use a hash. After creating the initial group, I would assign some unique value to the members. Then when making the second unit lists,
# create a way to not group people together with the same unique value.



