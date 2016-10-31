# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
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
    print "#{@state} will lose #{predicted_deaths(@population_density, @population, @state)} people in this outbreak and will spread across the state in #{speed_of_spread(@population_density, @state)} months.\n\n"
  end

  private
# estimates the amount of deaths
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    number_of_deaths
  end
# estimates the length of time for deaths to occur.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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