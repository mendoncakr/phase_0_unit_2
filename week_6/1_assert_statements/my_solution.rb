# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.

# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# The method will raise an error statement saying assertion has failed unless


# 3. Copy your selected challenge here
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

# 4. Convert your driver test code from that challenge into Assert Statements
assert { mode([1, 2, 3, 4, 5, 5, 7]) == [5]}
assert { mode([4, 4, 5, 5, 6, 6, 6, 7, 5]) == [5,6]}
assert { mode(["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]) == ["banana", "cherry"]}


# 5. Reflection
#Not sure if this is what was expected as it seemed to easy. 
