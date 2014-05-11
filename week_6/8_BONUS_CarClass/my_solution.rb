# U2.W6: Create a Car Class from User Stories


# I worked on this challenge with Joey Rosztoczy 


# 2. Pseudocode

# Be able to initialize the actual car with color and model attributes
# Set address end point for car to travel to
# Be able to return the current speed of the car
# Define method to turn car left or right
# Define an accelerate method to speed up or slow down a car
# Define method showing total distance traveled
# Define a method to "stop" the car or accelerate to 0
# Define method that shows last method called



# 3. Initial Solution
class Car
    attr_accessor :color, :make, :speed_limit
    
    def drive(distance_to_travel, speed)
        @speed = speed
        p "You moved #{distance_to_travel} miles at a speed of #{speed} mph!"
    end
    
    def direction(left_or_right)
        p "You turned #{left_or_right}" 
    end
    
    def accelerate(new_speed)
        if new_speed < @speed
            puts "You deccelerated to #{new_speed} mph!"
        elsif new_speed > @speed
            puts "You accelerated to #{new_speed} mph!"
        else
            puts "You didn't change speed?!"
        end
        @speed = new_speed
    end
end


bmw = Car.new
bmw.drive(25, 25)




# 4. Refactored Solution




# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
    raise ArgumentError, 'NOPE' unless yield
end

bmw =  Car.new
bmw.color = "orange"
bmw.make = "BMW"

assert { bmw.owner == Car }

bmw.drive(.25, 25)






# 5. Reflection 