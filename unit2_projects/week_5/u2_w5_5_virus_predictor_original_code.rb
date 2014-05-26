# U2.W5: Virus Predictor

# I worked on this challenge [by myself.]

# ----- Release 0: Run the code

# Look at the output. Look at the input (it's in the other file). Explain what the program is doing.

#   The program uses population density and population to determine how many predicted deaths will result in a given state.
#   The program uses population density to determine how quickly the virus will spread across a state.
#   The code is presently only performing computations for Alabama, Jersey, California, and Alaska. 

# ----- Release 1: require_relative

# Write a comment explaining the require_relative statement - You should be somewhat familiar with this by now - it's in every spec.rb file.

#   require_relative points to another file that will need to be accessed inorder to carry out the functions intended in the following code.  It tries to 
#     load a library file named, in this case, 'state_data', relative to this files path.


# ----- Release 2: Analyze state_data

# Take a look at the state_data file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?)

#     This hash is composed to two styles of writing hashs.
#     The hash, state_data is structured around a literal hash-rocket model  {key => value}
#     Inside the hash, state_data, each state's information is presented using symbols and values.

# ----- Release 3: Comment each method

# Comment each method (above the method) and define it's responsibility.


require_relative 'state_data'

class VirusPredictor

#   This method sets up the variables, whose values are imported when the class VirusPredictor is called using .new, and assigned to instance variables.
#     This instance variable can be seen by all of the methods in the class.

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

#   The virus_effects method makes both the predicted_deaths and the speed_of_spread methods public.
#   Since virus_effects is public and in the same class as the two private methods, it has access to both methods.
#   So predicted_deaths and speed_of_spread methods are blocked from direct outside access, but not to a method inside the same class.
#   It seems odd that instance variables that can be seen by anything in a class would need to be passed.

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #  What is this?  This causes both of the following methods to become private.  If an attempt is made at access them from outside of the class, 
              #  and an error occurs.
            # What happens if it were cut and pasted above the virus_effects method.
              #  Pasting private above the virus_effects method makes all three of the methods below private.  Once this happens, we no longer receive
              #   the 4 reports.

#   The predicted_deaths methods does actually that.  It determines using pop_density to control flow, which calculation applies to this region and 
#     produces and rounded down number of fatalities.
#   It then prints a short statement regarding state and predicted deaths due to this virus.

  def predicted_deaths(population_density, population, state)
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

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #   The speed_of_spread method calculates the number of months before the virus has spread across the entire state.
  #     This method again uses pop_density to control flow and determine the total time.
  #     Again, we are given a very short report indicating the number of months until the virus has spread across the entire state.

  def speed_of_spread(population_density, state) #in months
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

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects


# ----- Release 4: Implement a new feature!
# Create a report for all 50 states, not just the 4 listed below. Is there a DRY way of doing this?

STATE_DATA.each {|k, v| k
k = VirusPredictor.new(k, STATE_DATA[k][:population_density], STATE_DATA[k][:population], STATE_DATA[k][:region], STATE_DATA[k][:regional_spread]) 
k.virus_effects
}

# ----- Release 5: Refactor virus_effects
# ONLY look at virus_effects (not the two methods in it). HINT: what is the scope of instance variables? What is being passed in? Does it make sense?

#   It doesn't make sense that we are "sharing" shared variables again.  However, if they are removed, the other two methods no longer work, becasue they are expecting agruments to be passed in.  If the arguments are erased from both virus_effects and predicted_deaths/speed_of_spread, it seems to work fine.  Now, I know that we were not suppose to "mess with" the predicted_deaths/speed_of_spread methods, but this removes the most code.

# ----- Release 6: Private
# What is the purpose of "private". What happens if you move it elsewhere in the class?

#  What is this?  This causes both of the following methods to become private.  If an attempt is made at access them from outside of the class, 
              #  and an error occurs.
            # What happens if it were cut and pasted above the virus_effects method.
              #  Pasting private above the virus_effects method makes all three of the methods below private.  Once this happens, we no longer receive
              #   the 4 reports.

# ----- Release 7: Refactor!
#Refactor the private methods predicted_deaths and speed_of_spread. How can you make them more DRY?


  def predicted_deaths(population_density, population, state)
    if @population_density >= 200; number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150; number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100; number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50; number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread(population_density, state) #in months
    speed = 0.0

    if @population_density >= 200; speed += 0.5
    elsif @population_density >= 150; speed += 1
    elsif @population_density >= 100; speed += 1.5
    elsif @population_density >= 50; speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  # I saved eight lines.  I could not think of a way that did not add code elsewhere of equal or greater amounts inorder to decrease this code.
  #   This code is more compact, however I do not think that it really meets the DRY criteria.
