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