# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. Ron Ishak's solution I liked 
# What I learned from this solution
# I liked how they minimized the use of variables. I find that I name a lot of variables
# throughout my initial code which gets confusing later down the road.

# Copy solution here:
# class Array
#   def pad!(number, padding = nil)
#   	(number - self.length).times { self << padding }
#   	replace(self)
#   end

#   def pad(number, padding = nil)
#     dup.pad!(number, padding)
#   end
# end





# 2. Colin Trent's solution I liked
# What I learned from this solution
# I liked the idea of cloning the object instead of simplying creating a new one. Though I think they do the same thing,
# cloning is lesss text and therefore cleaner code.

# Copy solution here:
# class Array
# 	def pad!(expected_length, value=nil)
# 	  while expected_length > length
# 	  	self << value
# 	  end
# 	  self
# 	end

# 	def pad(expected_length, value=nil)
# 	  newArr = self.clone.pad!(expected_length, value)
# 	  newArr
# 	end

# end





# 3. My original solution:
# class Array
# 	def pad(spaces, filler = nil)
# 		arrayCopy = Array.new #create new array object
# 		self.each do |element| arrayCopy << element end
# 		arrayLength = self.length
# 		newSpaces = spaces - arrayLength
# 		if spaces <= arrayLength 
# 			return arrayCopy
# 		else
# 			newSpaces.times { arrayCopy << filler }
# 			return arrayCopy
# 		end
# 	end

# 	def pad!(spaces, filler = nil)
# 		arrayLength = self.length
# 		newSpaces = spaces - arrayLength
# 		if spaces <= arrayLength 
# 			return self
# 		else
# 			newSpaces.times { self << filler }
# 			return self
# 		end
# 	end
# end

# 4. My refactored solution:

class Array
	def pad(spaces, filler = nil)
		newArray = self.clone
		if spaces <= newArray.length
			return newArray
		else
			(spaces- self.length).times { newArray << filler }
			return newArray
		end
	end

	def pad!(spaces, filler = nil)
		if spaces <= self.length 
			return self
		else
			(spaces - self.length).times { self << filler }
			return self
		end
	end
end

# 5. Reflection
# This was the first time, I actually refactored my code and felt good about it. Looking at the variety of people's solutions,
# it's definitely cool to see how so many different minds approached this challenge. Sometimes its hard to believe that my solution 
# isnt the best. An ego problem I suppose. Though LOTS of people dont push their changes, the gists I see were all effective and efficient
# in their code. I'm definitely going to start perusing other peoples code when stuck on a challenge and/or looking to refactor
#