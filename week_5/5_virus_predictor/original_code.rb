# U2.W5: Virus Predictor

# I worked on this challenge with Tim Howard.


#the programs function is to determine the virus's effects on state population (i.e. predicted deaths and rate of infection). This data
# is based on state data that is located in a hash. The output is a string that contains a calculation of predicted deaths and how fast it will spread in months tim.
# EXPLANATION OF require_relative
# require_relative is a complementary method to require that functions to include a necessary file needed for the whole program to run.


require_relative 'state_data'

class VirusPredictor

  #initialize method instantiates the instance variables for use within rest of code and makes them only accesible to methods within the class.
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  

  def virus_effects  # This method is outputting the calculated information from the below methods i.e. predicted death based on pop. density, population, and state
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private #the private method is used to limit visbility of a method(s). That is, any methods following "private" cannot be accessed by instances of the class.
  
  # def predicted_deaths(population_density, population, state)
  #   if @population_density >= 200
  #     deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     deaths = (@population * 0.1).floor
  #   else 
  #     deaths = (@population * 0.05).floor
  #   end
  #   print "#{@state} will lose #{deaths} people in this outbreak"
  # end

  def predicted_deaths(population_density, population, state)
      deaths = (@population * 0.4).floor if @population_density >= 200
      deaths = (@population * 0.3).floor if @population_density >= 150
      deaths = (@population * 0.2).floor if @population_density >= 100
      deaths = (@population * 0.1).floor if @population_density >= 50
      deaths = (@population * 0.05).floor if @population_density < 50
      print "#{@state} will lose #{deaths} people in this outbreak"
  end

  # def speed_of_spread(population_density, state) #in months
  #   speed = 0.0

  #   if @population_density >= 200
  #     speed += 0.5
  #   elsif @population_density >= 150
  #     speed += 1
  #   elsif @population_density >= 100
  #     speed += 1.5
  #   elsif @population_density >= 50
  #     speed += 2
  #   else 
  #     speed += 2.5
  #   end

  #   puts " and will spread across the state in #{speed} months.\n\n"
  # end

    def speed_of_spread(population_density, state) #in months
    speed = 0.0
    speed += 0.5 if @population_density >= 200
    speed += 1   if @population_density >= 150
    speed += 1.5 if @population_density >= 100
    speed += 2   if @population_density >= 50
    speed += 2.5 if @population_density <  50
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each_key do |key|
    state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread]) 
    state.virus_effects
end
