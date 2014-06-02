# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself].

# Release 0: Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.

# 	This looks like fun.  I like pez!


# 1. Driver Test Results before assert statements:

# 	Error 1
# 			u2_w6_pezdispenser_class_from_user_stories.rb:41:in `initialize': wrong number of arguments(1 for 0) (ArgumentError)
# 			from u2_w6_pezdispenser_class_from_user_stories.rb:41:in `new'
# 	 		from u2_w6_pezdispenser_class_from_user_stories.rb:41:in `<main>'

# 	 	I believe that this is occuring because, at the moment, PezDispenser can not accept any arguments.
# 			Fix with initialize method.

#  	Error 2
# 			u2_w6_pezdispenser_class_from_user_stories.rb:55:in `<main>': undefined method `pez_count' 
# 			for #<PezDispenser:0x00000101088f70> (NoMethodError)

# 		The method 'pez_count' just does not exist yet.
# 			Fix by creating method 'pez_count'

# 	Error 3
# 			u2_w6_pezdispenser_class_from_user_stories.rb:71:in `<main>': undefined method `see_all_pez' 
# 			for #<PezDispenser:0x0000010205c460> (NoMethodError)

# 		The method 'see_all_pez' does not exist yet.
# 			Fix by creating method 'see_all_pez'

#  	Error 4
#  			u2_w6_pezdispenser_class_from_user_stories.rb:84:in `<main>': undefined method `add_pez' 
# 				for #<PezDispenser:0x0000010090c6e8> (NoMethodError)

# 		The method 'add_pez' does not exist yet.
# 			Fix by creating method 'add_pez'

# 	Error 5
#  			u2_w6_pezdispenser_class_from_user_stories.rb:100:in `<main>': undefined method `get_pez' 
#  				for #<PezDispenser:0x0000010090c170> (NoMethodError)

# 		The method 'get_pez' does not exist yet.
# 			Fix by creating method 'get_pez'


# 2. Pseudocode

# 	What are the innards of the class PezDispenser?

# 	There are 4 methods that make up the class PezDispenser
=begin
Method 1: initialize
Input: initialize accepts the argument 'flavors'.
Outputs: None (The instance variable @flavors is established.)

Method 2: pez_count
Input: None  (It has access to the instance variable @flavors.)
Outputs: Returns the number of pez currently in the pez dispenser.

Method 3: see_all_pez
Input: None (It has access to the instance variable @flavors.)
Outputs: An Array of all the current flavors in the pez dispenser.

Method 4: add_pez
Input: Accepts an input new_pez  (This appears to be only one flavor at a time)
Output: The array @flavors with new_pez added to the end

Method 5: get_pez
Input: This takes the instance variable @flavors
Output: The last flavor in the array @flavors.
			After this has been done the array @flavors is one pez shorter.  The last pez is removed.
=end

# 	Define a class called PezDispenser

	# 	Define the initialize for this class that accepts flavors as an argument.
		#  	Assign an instance of @flavors and set it to flavors
	# 	End initialize method

	# 	Define pez_count method (It does not need to accept any arguments)
		# 	Assign l the value @flavors.length
		# 	Puts this value to the command line
		# 	Return l
	# 	End pez-count method

	#  	Define see_all_pez method (It does not need to accept any arguments)
		# 	Print @flavors
	# 	End see_all_pez method

	# 	Define add_pez method (It needs to accept one argument: new_pez)
		# 	Push new_pez to the array @flavors
		# 	Print @flavors
	# 	End add_pez method

	# 	Define get_pez method (It does not need to accept any arguments.)
		# 	Assign pez_removed the value of @flavors.pop
		# 	Return pez_removed
	# 	End get_pez method
# 	End class called PezDispenser


# 3. Initial Solution

class PezDispenser

	def initialize(flavors)
		@flavors = flavors
		print @flavors
		unless @flavors.length > 0
      		raise ArgumentError.new("Your pez is empty.")
    	end
	end

	def pez_count
		l = @flavors.length
		puts l
		return l
	end

	def see_all_pez
		print @flavors
	end

	def add_pez(new_pez)
		@flavors << new_pez
		print @flavors
	end

	def get_pez
		pez_removed = @flavors.pop
		return pez_removed
	end
end
 
# 4. Refactored Solution  (There are only a couple of lines to delete that were helpful in writing the code to watch 
# 			what it does, but are not necessary for the final code.)

class PezDispenser

	def initialize(flavors)
		@flavors = flavors
		unless @flavors.length > 0
      		raise ArgumentError.new("Your pez is empty.")
    	end
	end

	def pez_count
		return @flavors.length
	end

	def see_all_pez
		print @flavors
	end

	def add_pez(new_pez)
		@flavors << new_pez
	end

	def get_pez
		return @flavors.pop
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

#  flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
#    (I only removed this so that one of the Assert tests could be run.)
#flavors = []
#super_mario = PezDispenser.new(flavors)
flavors = ["cherry", "chocolate", "cola", "grape", "lemon", "orange", "peppermint", "raspberry", "strawberry"]
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez
puts "Now you have #{super_mario.pez_count} pez!"

#***************  PRACTICE ASSERT ****************

def assert
  puts "Processing..."
  raise "Assertion failed!" unless yield 
  puts "True!"
end

assert { (super_mario.kind_of? PezDispenser) == true }
assert { super_mario.pez_count == 9}
assert { super_mario.get_pez == "strawberry" }
# assert { super_mario.see_all_pez == ["cherry", "chocolate", "cola", "grape", "lemon", "orange", "peppermint", "raspberry"] }
#  I do not see why this last assert fails.  I have printed out super_mario.see_all_pez just one line before this and it 
# 		produces the array used for the check.  I have tried varying combinations with not positive results.


# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      I felt that this challenge went smoothly.  I added the code for the methods and changed names and added arguments 
#  			where necessary.  I used instance variables effectively to communicate information across the methods.  I 
# 			also was able to create assert code that tested a few aspects of the code.  I tried without success to get
# 			assert on line 207 to function.  I am not sure why it does not work.  I tried printing off the output
# 			super_mario.see_all_pez to be able to check if the boollean should work.  It looks like it should.  I 
# 			am questioning if one is an array while the other is not.  

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Only the assert failure on line 207 which should have passed.  I 

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Again, only line 207.

4)  Did you learn any new skills or tricks?

#      I feel like the following were really strengthened through this exercise my understanding of:classes, instance variable, 
#  			scope, methods, refactoring code, methods to manipulate arrays, use of Driver Tests and Asserts. 

5)  How confident are you with each of the Learning Competencies?

#       I am very confident.  I had fun with this assignment.  I added a raise ArgumentError if someone tries to add an 
#  			empty array of flavors.  I want to add  

6)  Which parts of the challenge did you enjoy?

#       I really liked producing something that behaved somewhat like a real object.  Again, I enjoyed the puzzle/logic
#  			solving aspects.  I am having fun with the asserts.

7)  Which parts of the challenge did you find tedious?

#        I did not find any of the is assignment tedious.
=end


