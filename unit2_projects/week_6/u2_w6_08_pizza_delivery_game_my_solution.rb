# U2.W6: Create a Car Class from User Stories


# I worked on this challenge [by myself].


#You are tasked with creating a Car object that is to operate in the context of a pizza delivery video game. (Exciting!) 
#Review the user stories below to get an idea of the class structure.

#As a video game player, I want to be able to create a new car and set it's model 
#			and color so I can customize it in the video game.
#As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
#As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
#As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
#As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive 
#			following the rules of the road.
#As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
#As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
#As a video game player, I would like to see output reflecting the latest action of my car so I can see a 
#			play-by-play of the pizza delivery.
#What are the characteristics associated with the car? These are your attributes. What are the actions associated 
#			with your car? These are your methods.

=begin
#Attributes (Characteristics associated with the car): 

	Model
	Color
	Number of Pizzas to deliver
	Maximum Accerleration
	Top speed
	Distance covered/travelled
	speed (acceleration/decelerate)

#Methods (Actions associated with the car):

	Check current speed
	Accelerate/Decelerate
	Turn right or left
	Tally Total Distance/Mileage
	stop
	Signal
	play-by-play of the pizza delivery
=end


# 2. Pseudocode

#Create a simple list of the attributes and methods (don't worry about your class structure yet!) 
#Try to be explicit and show if your methods are receiving any parameters.

#Attributes (Characteristics associated with the car): 

#	The class car will be instantiated with the following inputs:
# 			Model, Color, number of pizza to be delivered, acceleration, initial distance/mileage, initial speed

#Methods:

#  	This call will need to be able to:

# 		accelerate
			# Define accelerate with an input of ts, time in seconds.
				# convert ts to a floating number to allow proper calculation
				# convert ts to hours by dividing by 3600 to add in more detailed calculations
				# @distance = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2
				# puts "The distance travelled during acceleration: #{@distance}"
				# @cars_mileage = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
				# puts "Your total mileage: #{@cars_mileage}"
				# @cars_speed = @cars_speed + @cars_acceleration*ts
				# puts "Your current speed: #{@cars_speed}"
				# @time = @time + ts
			# End accelerate method

#  		maintain a constant speed

			# Define constant_speed as a method which accepts the following agruements: ts, turn, length
				# cars_acceleration = 0.0 (requirement for constant speed.)
				# puts @cars_speed
				# convert ts = ts.to_f
				# puts ts
				# convert ts to hours: t2 = ts/3600
				# puts t2
				# @distance = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2
				# puts "The distance travelled during constant speed: #{@distance}"
				# @distance = @cars_speed*t2
				# puts "The distance travelled during constant speed: #{@distance}"
				# @cars_mileage = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
				# puts "Your total mileage: #{@cars_mileage}"
				# @time = @time + ts
			# End method

# 		decelerate

		#	Define decelerate as a method which accepts ts
			# puts @cars_speed
			# convert ts to a floating number to allow proper calculation
			# convert ts to hours by dividing by 3600 to add in more detailed calculations
			# @distance = 0.5*(-@cars_acceleration)*ts*t2 + @cars_speed*t2
			# puts "The distance travelled during deceleration: #{@distance}"
			# @distance = @cars_speed*t2 - 0.5*@cars_acceleration*ts*t2
			# puts "The distance travelled during deceleration: #{@distance}"
			# @cars_mileage = @cars_speed*t2 - 0.5*@cars_acceleration*ts*t2 + @cars_mileage
			# puts "Your total mileage: #{@cars_mileage}"
			# @cars_speed = @cars_speed - @cars_acceleration*ts
			# puts "Your current speed: #{@cars_speed}"
			# @time = @time + ts
		# End method

#  		stop

		# Define stop as a method
			# @cars_speed = 0 (Reset speed)
			# @time = @time + 3 (The time at the stop.)
		# end


# 		check speed

		# Define check_speed as a method
			# puts "Glancing down at the speedometer reveals that you are cruising along at #{@cars_speed}."
		# end

# 		turn left
		# Define left_turn method
			# puts "You have successfully completed a left turn."
		# End

# 		turn right

		# Define right_turn method
			# puts "You have successfully completed a right turn."
		# End


# 		deliver pizzas
	
		# Define deliver_pizza that accepts pizzas_delivered (The number of pizzas to deliver)
			# Assign @pizzas_to_deliver = @pizzas_to_deliver - pizzas_delivered
			# puts "#{pizzas_delivered} down and #{@pizzas_to_deliver} to go."
		# End method

# 		keep track of mileage

		# Define mileage
			# puts "You have driven a total of #{@cars_mileage} miles."
			# puts "Remember to keep track of this so you can get paid."
			# push @cars_mileage to the array @mileage
		# End method



# 3. Initial Solution


class Car

	def initialize(model, color, cars_acceleration, pizzas_to_deliver, pizzas)
		@model = model
		@color = color
		@cars_acceleration = cars_acceleration
		@pizzas_to_deliver = pizzas_to_deliver
		@array_of_pizzas = pizzas
		@cars_speed = 0
		@mileage =[]
		@cars_mileage = 0
		@distance = 0
		@time = 0
	end

	def directions_and_notes(array)
		puts
		puts "Directions and notes for your next delivery:"
		puts
		l = array.length - 1
		array.each { |k|
			puts "The distance until the next turn, #{k[0]} miles"
			puts "The maximum speed limit: #{k[1]} mph"
			puts "NOTES: #{k[2]}"
			puts "Change of action: #{k[3]}"
		}
		puts
	end


	def accelerate(ts) 
		puts @cars_speed
		ts = ts.to_f
		puts ts
		t2 = ts/3600
		puts t2
		@distance = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2
		puts "The distance travelled during acceleration: #{@distance}"
		@cars_mileage = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
		puts "Your total mileage: #{@cars_mileage}"
		@cars_speed = @cars_speed + @cars_acceleration*ts
		puts "Your current speed: #{@cars_speed}"
		@time = @time + ts
	end

	def constant_speed(ts, turn, length)
		cars_acceleration = 0.0
		puts @cars_speed
		ts = ts.to_f
		puts ts
		t2 = ts/3600
		puts t2

		@distance = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2
		puts "The distance travelled during constant speed: #{@distance}"
		@distance = @cars_speed*t2
		puts "The distance travelled during constant speed: #{@distance}"
		@cars_mileage = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
		puts "Your total mileage: #{@cars_mileage}"

#		dis_remaining = length - @distance
#		puts "You need to make a #{turn} in #{dis_remaining}."
#		puts "You remember that you will need to stop, no California roll..."
		@time = @time + ts

	end

	def decelerate(ts)
		puts @cars_speed
		ts = ts.to_f
		puts ts
		t2 = ts/3600
		puts t2

		@distance = 0.5*(-@cars_acceleration)*ts*t2 + @cars_speed*t2
		puts "The distance travelled during deceleration: #{@distance}"
		@distance = @cars_speed*t2 - 0.5*@cars_acceleration*ts*t2
		puts "The distance travelled during deceleration: #{@distance}"

		@cars_mileage = @cars_speed*t2 - 0.5*@cars_acceleration*ts*t2 + @cars_mileage
		puts "Your total mileage: #{@cars_mileage}"
		@cars_speed = @cars_speed - @cars_acceleration*ts
		puts "Your current speed: #{@cars_speed}"

		@time = @time + ts
	end

	def stop
		@cars_speed = 0
		puts "You have stopped and your current speed is #{@cars_speed}"
		puts "You look with care to be sure the it is fine to turn."
		puts "The coast is clear."
		@cars_speed = 0
		@time = @time + 3
	end

	def check_speed
		puts "Glancing down at the speedometer reveals that you are cruising along at #{@cars_speed}."
	end

	def left_turn
		puts "You have successfully completed a left turn."
	end

	def right_turn
		puts "You have successfully completed a right turn."
	end

	def school_zone(school_zone_speed_limit, how_far)
		puts "The road you are on has a School Zone."
		puts "Remember to be safe.  Kids are around." 
		puts "The speed limit during the School Zone is: #{school_zone_speed_limit} mph."
		puts "You are #{how_far} miles away from where this zone starts."
	end

	def deliver_pizza(pizzas_delivered)
		@pizzas_to_deliver = @pizzas_to_deliver - pizzas_delivered
		puts "#{pizzas_delivered} down and #{@pizzas_to_deliver} to go."
	end

	def total_time
		puts "The driving time for this trip was #{@time} seconds."
	end

	def mileage
		puts "You have driven a total of #{@cars_mileage} miles."
		puts "Remember to keep track of this so you can get paid."
		@mileage << @cars_mileage
	end


	def get_next_pizza
		next_pizza = @array_of_pizzas[0]
		print next_pizza
		@array_of_pizzas.shift
	end

end

class Pizza
	def initialize(size, type)
		@size = size
		@type = type
	end

	def make_pizza
  		toppings = @type.join(", ")
  		puts "You have just made a #{@size} pizza topped with #{toppings}."
	end
end



car_1 = Car.new("Corvette", "Red", 10, 8, ["Cheese", "Chesse", "Gluten-Free", "Vegetarian", "Pepperoni", "Pepperoni and Mushrooms"])

pizza_1 = Pizza.new("Large", ["Cheese", "Pepperoni", "Mushrooms", "Black Olives"])

pizza_1.make_pizza

#  Translating the User Story


car_1.directions_and_notes([[0.25, 25, "None", "right-turn"], 
	[1.5, 35, "School-Zone, Reduce speed to 15 mph", "left-turn"], 
	[1.4, 35, "Delivery", "Stop"]])

car_1.accelerate(2.5)
puts
car_1.constant_speed(33, "right-turn", 0.25)
puts
car_1.decelerate(2.5)
puts
car_1.stop
puts
car_1.left_turn
puts
car_1.school_zone(15, 1.0)
puts
car_1.accelerate(3.5)
puts
car_1.constant_speed(100, "left-turn", 1.5)
puts
car_1.decelerate(2)
puts
car_1.check_speed
puts
car_1.constant_speed(60, "left-turn", 1.5)
puts
car_1.accelerate(2)
puts 
car_1.constant_speed(22.5, "left-turn", 1.5)
puts
car_1.decelerate(3.5)
puts
car_1.stop
puts
car_1.right_turn
puts
car_1.accelerate(3.5)
puts 
car_1.constant_speed(140.5, "deliver pizza", 1.4)
puts
car_1.decelerate(3.5)
puts
car_1.stop
puts
car_1.deliver_pizza(2)
puts 
car_1.total_time
puts
car_1.get_next_pizza
puts
car_1.get_next_pizza
puts
car_1.get_next_pizza
puts


# 4. Refactored Solution
=begin
class Car

	def initialize(model, color, cars_acceleration, pizzas_to_deliver)
		@model = model
		@color = color
		@cars_acceleration = cars_acceleration
		@pizzas_to_deliver = pizzas_to_deliver
		@cars_speed = 0
		@mileage =[]
		@cars_mileage = 0
		@distance = 0
		@time = 0
	end

	def directions_and_notes(array)
		puts
		puts "Directions and notes for your next delivery:"
		puts
		l = array.length - 1
		array.each { |k|
			puts "The distance until the next turn, #{k[0]} miles"
			puts "The maximum speed limit: #{k[1]} mph"
			puts "NOTES: #{k[2]}"
			puts "Change of action: #{k[3]}"
		}
		puts
	end


	def accelerate(ts) 
		ts = ts.to_f
		t2 = ts/3600
		@distance = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2
		@cars_mileage = 0.5*@cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
		@cars_speed = @cars_speed + @cars_acceleration*ts
		@time = @time + ts
	end

	def constant_speed(ts, turn, length)
		cars_acceleration = 0.0
		ts = ts.to_f
		t2 = ts/3600
		@distance = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2
		@distance = @cars_speed*t2
		@cars_mileage = 0.5*cars_acceleration*ts*t2 + @cars_speed*t2 + @cars_mileage
		@time = @time + ts

	end

	def decelerate(ts)
		ts = ts.to_f
		t2 = ts/3600
		@distance = 0.5*(-@cars_acceleration)*ts*t2 + @cars_speed*t2
		@cars_mileage = @cars_speed*t2 - 0.5*@cars_acceleration*ts*t2 + @cars_mileage
		@cars_speed = @cars_speed - @cars_acceleration*ts
		@time = @time + ts
	end

	def stop_n_turn
		puts "You have stopped and your current speed is #{@cars_speed}"
		puts "You look with care to be sure that it is fine to turn."
		puts "The coast is clear."
		@cars_speed = 0
		@time = @time + 3
	end

	def check_speed
		puts "Glancing down at the speedometer reveals that you are cruising along at #{@cars_speed}."
		return @cars_speed
	end

	def left_turn
		puts "You have successfully completed a left turn."
	end

	def right_turn
		puts "You have successfully completed a right turn."
	end

	def school_zone(school_zone_speed_limit, how_far)
		puts "The road you are on has a School Zone."
		puts "Remember to be safe.  Kids are around." 
		puts "The speed limit during the School Zone is: #{school_zone_speed_limit} mph."
		puts "You are #{how_far} miles away from where this zone starts."
	end

	def stop
		puts "You are here to make a delivery."
	end

	def deliver_pizza(pizzas_delivered)
		@pizzas_to_deliver = @pizzas_to_deliver - pizzas_delivered
		puts "#{pizzas_delivered} down and #{@pizzas_to_deliver} to go."
		return @pizzas_to_deliver
	end

	def total_time
		puts "The driving time for this trip was #{@time} seconds."
	end

	def mileage
		puts "You have driven a total of #{@cars_mileage} miles."
		puts "Remember to keep track of this so you can get paid."
		@mileage << @cars_mileage
		return @cars_mileage
	end

	def get_next_pizza
		next_pizza = @array_of_pizzas[0]
		print next_pizza
		@array_of_pizzas.shift
	end

end

class Pizza
	def initialize(size, type)
		@size = size
		@type = type
	end

	def make_pizza
  		toppings = @type.join(", ")
  		puts "You have just made a #{@size} pizza topped with #{toppings}."
	end
end


car_1 = Car.new("Corvette", "Red", 10, 8, ["Cheese", "Chesse", "Gluten-Free", "Vegetarian", "Pepperoni", "Pepperoni and Mushrooms"])

pizza_1 = Pizza.new("Large", ["Cheese", "Pepperoni", "Mushrooms", "Black Olives"])

pizza_1.make_pizza


car_1.directions_and_notes([[0.25, 25, "None", "right-turn"], 
	[1.5, 35, "School-Zone, Reduce speed to 15 mph", "left-turn"], 
	[1.4, 35, "Delivery", "Stop"]])

puts "You are out for your first delivery."
puts "You are on the first of three roads."
puts "Get their pizza there on time, but don't be dangerous."
car_1.accelerate(2.5)
car_1.constant_speed(33, "right-turn", 0.25)
car_1.decelerate(2.5)
car_1.stop_n_turn
puts
car_1.left_turn
puts "You are on the second of three roads."
puts
car_1.school_zone(15, 1.0)
puts
car_1.accelerate(3.5)
car_1.constant_speed(100, "left-turn", 1.5)
car_1.decelerate(2)
puts "You are currently at the school zone."
car_1.check_speed
puts "Good job!  Look at you being safe...  :)"
puts
car_1.constant_speed(60, "left-turn", 1.5)
car_1.accelerate(2)
car_1.constant_speed(22.5, "left-turn", 1.5)
car_1.decelerate(3.5)
car_1.stop_n_turn
puts
car_1.right_turn
puts "You are on the last road."
puts
car_1.accelerate(3.5)
car_1.constant_speed(140.5, "deliver pizza", 1.4)
car_1.decelerate(3.5)
car_1.stop
puts
car_1.deliver_pizza(2)
puts 
car_1.total_time
puts
car_1.mileage
puts
car_1.get_next_pizza
puts
car_1.get_next_pizza
puts
car_1.get_next_pizza
puts

# 1. DRIVER TESTS GO BELOW THIS LINE

puts car_1.check_speed == 0.0
puts car_1.deliver_pizza(2) == 4
puts car_1.mileage < 3.15 && car_1.mileage > 3.14
=end

# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      I tried to make this a very accurate model.  I used equation to model the distances and speeds.  This was fun.
# 			However, I think that in trying to make my program "play" by the prompt's parameters, it increased the 
# 			challenge level.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      It was fun keeping track of which variables needed to be accessed by all methods and which one didn't.  Most of the
#  			coding was okay.  I have an unresolved piece of code.  I wanted to keep track of how far the car was from
# 			the next turn.  I the distance covered during each acc, dec, and constant speed seemed to reset the amount to
#  			reduce the road's length by.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I don't feel like I had any troubles, more than the comment in 2), which is an extra piece I was trying to add.
#  			I wanted the "game" to seem more interactive.

4)  Did you learn any new skills or tricks?

#      I feel like my understanding of classes has been strengthened 

5)  How confident are you with each of the Learning Competencies?

#       I really enjoyed this challenge.  I feel very confident.  I also think that with more time I can resolve the issue 
# 			mentioned in 2).

6)  Which parts of the challenge did you enjoy?

#       Trying to get it all to work smoothly together.

7)  Which parts of the challenge did you find tedious?

#        Trying to get it all to work smoothly together.
=end



