# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: 16 digit integer
# Output: boolean, representing validity of credit card
# Steps:
#initialize class with 16 digit integer
	# raise error if length is not equal to 16
#define check card	
#def double_digit method
	#method should double every other digit of the 16 digits starting from the second to last
#define digit_sum
	# method should sum both skipped digits and doubled digits. 
	# splitting the integers with 2 digits		
#define valid?
	#determine if sum from above method is a multiple of 10
		#if true, return true
		#else, return false	


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard
# 	def initialize(card_number)
# 		raise ArgumentError.new("Credit card should be 16 digits only") unless (card_number.to_s.length == 16)
# 		@card_number = card_number.to_s
# 	end

# 	def check_card
# 		@card_validity = false
# 		@card_number = @card_number.split("")
# 		@double_every_other = []
# 		sum = 0
# 		@card_number.each_index { |index| 
# 			if index % 2 == 0
# 				@double_every_other << (@card_number[index].to_i * 2).to_s
# 			else
# 				@double_every_other << @card_number[index]
# 			end}
# 		p @double_every_other
# 		@step_2 = @double_every_other.join("").split("") #join all numbers to remove double digits, then split so each can be added individually
# 		p @step_2
# 		@step_2.each { |int| sum += int.to_i}
# 		p sum

# 		if sum % 10 == 0
# 			return @card_validity = true
# 		else
# 			return @card_validity = false
# 		end
# 		return @card_validity
# 	end

# end

# 4. Refactored Solution
class CreditCard

	def initialize(card_number)
		raise ArgumentError.new("Credit card should be 16 digits only") unless (card_number.to_s.length == 16)
		@cc_num = card_number.to_s.split("").map! {|digit| digit.to_i}
	end

	def check_card
		card_sum = 0
		@cc_num.each_index { |index| @cc_num[index] *= 2 if index.even? }
		@digits_to_sum = @cc_num.join("").split("") #join all numbers to remove double digits, then split so each can be added individually
		@digits_to_sum.each { |int| card_sum += int.to_i}
		card_sum % 10 == 0 ? true : false #if card sum is a multiple of then, card is valid, 
	end

end

# 1. DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4217661349462747)
p card.check_card == true
card = CreditCard.new(1234567887654321)
p card.check_card == false

# 5. Reflection 
# I enjoyed this challenge as it gave me a good grasp of classes and class methods. The toughest part for me was determining how to sum the digits within the array
# that held the the digits which had been doubled. I wasn't sure how to approach the digits that were greater than 9 as they had to split and then added individually.
# I notice that I'm starting to learn quicker when I force myself to test things out in IRB, instead of thinking it out in my head.
