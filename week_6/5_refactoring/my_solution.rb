# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution

# class CreditCard
# 	def initialize(number)
# 		digit_array = number.to_s.split("")
# 		if digit_array.count != 16
# 			raise ArgumentError.new("Needs to be exactly 16 digits")
# 		else
# 			@card_number = number
# 		end
# 	end

# 	def check_card
# 		counter = 0
# 		digit_array = @card_number.to_s.split("").map{ |digit| digit.to_i }
# 		while counter < 16
# 			if counter%2==0
# 				digit_array[counter]*=2
# 			end
# 		counter+=1
# 		end
# 		encoded_string = digit_array.map{|digit| digit.to_s}.join("")
# 		# now separate the string by digits again
# 		reencoded_digit_array = encoded_string.split("").map{ |digit| digit.to_i }
# 		total = reencoded_digit_array.inject { |sum, n| sum + n }
# 		if total%10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end



# Refactored Solution

#raghav1987


class CreditCard

	def initialize(number)
		digit_array = number.to_s.split("")
		digit_array.count != 16 ? (raise ArgumentError.new("Needs to be exactly 16 digits")) : @card_number = number.to_s.split("")
	end

	def check_card
		
		digit_array = @card_number.map { |digit| digit.to_i }
		digit_array.each_index { |index| digit_array[index] *= 2 if index.even?}
		encoded_string = digit_array.map { |digit| digit.to_s }.join("")
		# now separate the string by digits again
		reencoded_digit_array = encoded_string.split("").map { |digit| digit.to_i }
		total = reencoded_digit_array.inject { |sum, n| sum + n }
		total % 10 == 0 ? true : false
	end
end


# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assertion Failed!" unless yield
end

assert { 
	card1 = CreditCard.new(4408041234567893)
	card1.check_card == true }

assert {
	card2 = CreditCard.new(4408041234567892)
	card2.check_card == false }

assert { CreditCard.instance_method(:initialize).arity == 1 }


# Reflection 