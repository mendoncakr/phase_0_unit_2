# U2.W6: Drawer Debugger


# I worked on this challenge by myself.

# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?

	def initialize
	@contents = []
	@open = true
	end

	def open
	@open = true
	end

	def close
	@open = false
	end 

	def add_item(item)
	@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
	@contents.delete(item)
	end

	def dump  # what should this method return? Should return an empty array
	puts "Emptying the drawer..."
	@contents.clear
	end

	def view_contents
	puts "The drawer contains:"
	@contents.each {|silverware| puts "- " + silverware.type }
	end
end


class Silverware

	attr_reader :type

	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
	@type = type
	@clean = clean
	end

	def eat
	puts "eating with the #{type}"
	@clean = false
	end

	def clean_silverware
		puts "cleaning with the #{type}"
	end

end

#creating silverware objects
knife1 = Silverware.new("knife")
fork1 = Silverware.new("fork")
spoon1 = Silverware.new("spoon")
sharp_knife = Silverware.new("sharp_knife")

#creating drawer object
silverware_drawer = Drawer.new

#open drawer
silverware_drawer.open

# adding items to drawer
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(spoon1)
silverware_drawer.add_item(fork1) 
silverware_drawer.add_item(sharp_knife)

#viewing contents of drawer
silverware_drawer.view_contents


# removed these 2 lines because they remove the fork object which is called on later to eat
# silverware_drawer.remove_item
# silverware_drawer.view_contents

#taking specific silverware to eat and clean
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

removed_fork = silverware_drawer.remove_item(fork1) #add some puts statements to help you trace through the code...
removed_fork.eat
removed_fork.clean_silverware

#show contents of drawer after using 2 utensils
silverware_drawer.view_contents


p "===========emptying drawer==========="
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should return an empty silverware drawer


#BONUS SECTION


# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

assert { knife1.class == Silverware }
assert { silverware_drawer.open == true}

# 5. Reflection 
# I really enjoy debugging programs (so far). It's fun to tinker around with the code and see if you cna finally
# get something to work. I felt as if I got an alright grasp of classes through this exercise.
