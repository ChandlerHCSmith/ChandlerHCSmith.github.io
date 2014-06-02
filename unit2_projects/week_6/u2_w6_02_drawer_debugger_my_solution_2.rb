# U2.W6: Drawer Debugger


# I worked on this challenge [by myself].

# Release 0: Indent the code properly

# Release 1: Debug the program (5 Errors to fix.)

# 	Error  #1: 

# 	  u2_w6_drawer_debugger.rb:110: syntax error, unexpected $end, expecting keyword_end
# 	5. Reflection 
#                ^
#  	I believe that this is caused by class Drawer not having an end line.

# 	Error  #2: 
#   		u2_w6_drawer_debugger.rb:45:in `add_item': wrong number of arguments (1 for 0) (ArgumentError)
# 		from u2_w6_drawer_debugger.rb:86:in `<main>'
#
#  	I believe that this is caused by method add_item having no arguements afters its definition.  I have added (item)

# 	Error 	#3

#  			u2_w6_drawer_debugger.rb:103:in `<main>': undefined method `clean_silverware' for 
#  						#<Silverware:0x0000010089fc28 @type="sharp_knife", @clean=false> (NoMethodError)

# 	I beleive that this is caused by the calling of a method that does not yet exist.  
#  			clean_silverware does not yet exist.  I have created this method inside class Silverware.
#   			I have created a user statement, "The #{type} has been cleaned."
#  				I have also changed its @clean value to true.

# 	Error 	#4

#  			u2_w6_drawer_debugger.rb:125:in `<main>': undefined method `eat' for nil:NilClass (NoMethodError)

# 	I believe that this is caused by the fork being removed from the drawer and add back.


#  	Error 	#5 

#  	I don't receive a 5th error without going on to "puts fork.clean"

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

	def add_item(item)      ############# Fix for error 2) #############
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?  It removes the last element in the array @content
		@contents.delete(item)
	end

	def dump  # what should this method return?   The original empty array @content.
		puts "Your drawer is empty."
		@contents = []
#		return []
	end

	def view_contents
#		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
#		return "- fork"
	end

	def value
		value = 0
		@contents.each {|x|
			if x == "knife"
				value = value + 3.5
			elsif x == "spoon"
				value = value + 2.5
			elsif x == "fork"
				value = value + 2.25
			else 
				value = value + 4.15
			end
			puts "The total value of the silverware in your silverware drawer is #{value}."
		}
	end

end      ############# Fix for error 1) #############


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

	def clean_silverware         ############# Fix for error 3) #############
		puts "The #{@type} has been cleaned."
		@clean = true
	end

	def lost					#  New Method #1
		puts "You have lost your #{@type}."
	end

	def id                      # New Method #2
		@type_id = rand(1000000)
		print "Your current fork's id is #{@type_id}."
		puts
		array = []
		array.push(@type_id)
		print array
		puts
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents
puts "---------------"
removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
puts "---------------"
silverware_drawer.view_contents #What should this return?  An empty array.

fork = Silverware.new("fork")      ############# Fix for error 4) #############
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork.eat
fork.id
fork.lost
silverware_drawer.value

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
  puts "Processing..."
  raise "Assertion failed!" unless yield 
  puts "True!"
end


assert { silverware_drawer.dump == [] }
assert { silverware_drawer.view_contents == "- fork" }


# 5. Reflection 

=begin

0) 	My three methods did return what I expected.  I am most pleased with my value method.  It returns the value of the 
		items in the drawer.  I also like my id method, but I think a hash with keys associated directly with the random
		id of each item in the drawer would prove to be more handy.


How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      The first 3 errors were quite simple.  Adding methods was quite simple.  The error involving the fork, I am
			still not a sure why the object becomes a nilClass.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Why does instancing the item fork and then removing it causes such a problem.  I many times tried to reestablish
			it as simple a member of the class.  I printed out the class and saw it sitting there but was not sure why it
			read as a nilClass?

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#    Only the idea in question 2).  

4)  Did you learn any new skills or tricks?

#     I feel like my use of assert and my ability to follow the logic of code was tested and improved. 

5)  How confident are you with each of the Learning Competencies?

#       I am confident about all except for the nilClass mentioned above.  I will have to do some research.

6)  Which parts of the challenge did you enjoy?

#       I like the challenge of fixing code.  I liked looking through the code and following the logic.  I found the use 
			of two classes interesting seeing how giving/inheriting attributes was accomplished.

7)  Which parts of the challenge did you find tedious?

#      Only the nilClass was tedious.  Most I wanted to figure it out and wished I had had someone at that time to work
			with.  
=end




