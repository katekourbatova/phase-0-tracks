# Virus Predictor

# I worked on this challenge with: Jeremy (Badillo?).
# We spent 1.75 hours on this challenge together, and finished one release and reflection on our own.

# EXPLANATION OF require_relative
# require_relative links in a file that is stored in the same directory as the program that requires the relative.

require_relative 'state_data'

class VirusPredictor
# makes variables available through out the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# combines the outputs of the two methods within it
  def virus_effects
    print "#{@state} will lose #{predicted_deaths(@population_density, @population)} people in this outbreak and will spread across the state in #{speed_of_spread(@population_density)} months.\n\n"
  end

  private
# estimates the amount of deaths
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density

    n = [50, 100, 150, 200]
    
    if @population_density >= n[3]
      coefficient = n[3]/500.0
    elsif @population_density >= n[2]
      coefficient = n[2]/500.0
    elsif @population_density >= n[1]
      coefficient = n[1]/500.0
    elsif @population_density >= n[0]
      coefficient = n[0]/500.0
    else
      coefficient = 0.05
    end
    
    number_of_deaths = (@population * coefficient).floor
  end
# estimates the length of time for deaths to occur.
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    speed
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#i.e state_name = "Alabama"
#i.e data = STATE_DATA["Alabama"]

STATE_DATA.each do |state_name,data|
  state = VirusPredictor.new(state_name, data[:population_density], data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The big hash is written out with one pair per line, and using the hash rocket (=>). The keys are strings.
# The internal, smaller hashes are written with the pairs on one line. The keys are symbols. The key/value pairs are connected by a colon.

# What does require_relative do? How is it different from require?
# require_relative links in another file that is stored in the same directory as the program. Require gets information from a ruby library.

# What are some ways to iterate through a hash?
# - .each
# - many more specific methods, like .keep_if, .delete_if, or .select

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# The variables were instance variable available within the whole class, and there was no reason for both methods to take @state if it was only being used to print a sentence.
# It was also awkward to have the sentence spread out across the outputs of two methods, so I changed that.

# What concept did you most solidify in this challenge?
# Iterating through a complex data structure and accessing data in it (see driver code).


