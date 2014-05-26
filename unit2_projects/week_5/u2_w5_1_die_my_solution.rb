# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself].


# Release 0. Test (RSPEC Results)
# 1. DRIVER TESTS GO BELOW THIS LINE

=begin
Chandlers-MacBook-Pro:Desktop ChandlerHCSmith$ cd die_1
Chandlers-MacBook-Pro:die_1 ChandlerHCSmith$ ls
1_die_spec.rb	my_solution.rb	readme.md
Chandlers-MacBook-Pro:die_1 ChandlerHCSmith$ RSPEC 1_die_spec.rb
.F.F.F

Failures:

  1) Die#initialize raises an ArgumentError if sides < 1
     Failure/Error: expect {
       expected ArgumentError but nothing was raised
     # ./1_die_spec.rb:10:in `block (3 levels) in <top (required)>'

  2) Die#sides returns the number of sides given on initialization
     Failure/Error: die.sides.should eq sides
       
       expected: 405
            got: nil
       
       (compared using ==)
     # ./1_die_spec.rb:29:in `block (3 levels) in <top (required)>'

  3) Die#roll returns a random number between 1 and the number of sides
     Failure/Error: unique_rolls.should eq possible_values
       
       expected: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165]
            got: [nil]
       
       (compared using ==)
     # ./1_die_spec.rb:46:in `block (3 levels) in <top (required)>'

Finished in 0.02098 seconds
6 examples, 3 failures

Failed examples:

rspec ./1_die_spec.rb:9 # Die#initialize raises an ArgumentError if sides < 1
rspec ./1_die_spec.rb:25 # Die#sides returns the number of sides given on initialization
rspec ./1_die_spec.rb:39 # Die#roll returns a random number between 1 and the number of sides
=end

# Comments on error/test:

#    I need to cause my code to throw an error if the number for sides entered is less than 1
#    I need my code to return the number of sides given on initialization when the class method sides is called.
#    I need my code to return a random number between 1 and the number of sides passed into the Class Die upon initialization. 

# ----------After I fixed all of the failures ----------------

#Finished in 0.33921 seconds
#6 examples, 0 failures


# Release 1: Translate the tests

#  puts die_a.roll == 1 || die_a.roll <= die_a.sides
#  puts die_a.sides > 1
#  puts die_b = Die.new(-5)

# Release 2: Pseudocode

# Input:

#   The class Die accepts a single value assigned to sides.  This value should be an integer.  More specifically, it should be an integer larger than 1.

# Output:

#   This class has the methods sides and roll.
#       sides returns the number of sides that the die has. (Which was given when the class was called and initialized.)
#       roll returns the value of the random integrer, between 1 and the number of sides provided.

# Steps:

#Establish class called Die
  #   Define the initialize method which accepts a single variable, sides
  #   Assign the instance variable sides which is equal to the numbe of sides passed to the initialize method
    #   Check that the nmber of sides is larger than 1 using unless sides > 1
      #   Use this to raise an ArgumentError if the number of sides is 1 or less.
    # end unless
  # end initilize

  # Define sides
    # return @sides
  # end sides
  
  # Define roll
    # Assign a variable roll and random number between 1 and @sides
    # return the value of roll
  # end sides

#  end class Die

#  Create an instance of Die using .new assign this to the variable die_a and passing the number of sides of this particular die.
#  Call .sides on the die_a instance.
#  Call .roll on the die_a instance.


# Release 3: Initial Solution

  
class Die
    def initialize(sides)
      @sides = sides
    	unless sides > 1
      	raise ArgumentError.new("You have entered either 1, 0, or a negative number of sides.  All die have atleast 2 sides.  No die has negative sides.")
    	end
    end
  
    def sides
      puts "Hi, I am running."
      puts "I want to remind you that your die has #{@sides} sides"
      return @sides
    end
    
    def roll
  	ans = rand(1..@sides)
  	roll = ans
  	puts "You just rolled a #{roll}."
    return roll
  	end 
end

die_a = Die.new(6)
die_a.sides
die_a.roll

# Release 4: Refactored Solution

class Die
    def initialize(sides)
      @sides = sides
    	unless sides > 1
      	raise ArgumentError.new("You have entered either 1, 0, or a negative number of sides.  All die have atleast 2 sides.  No die has negative sides.")
    	end
    end
  
    def sides
      return @sides
    end
    
    def roll
  	return rand(1..@sides)
  	end 
end

die_a = Die.new(6)
die_a.sides
die_a.roll

puts die_a.roll == 1 || die_a.roll <= die_a.sides
puts die_a.sides > 1
puts die_b = Die.new(-5)

# Release 5: Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Creating the class Die was easy.  Adding to this class the methods sides and roll were also easy.  Using rand to produce and random number seems to 
#         have worked nicely.  Passing rand the arugment (1..@side) worked nicely to avoid an unnecessay zero.  
#      I seem to understand the raise functionality inorder to throw an ArgumentError.  It doesn't appear that calling .new on the ArguementError is necessary.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Whether I turned the RSPEC errors into the correct Driver Test Code.
#      The code I wrote works, however, I would like to have a thumbs up or a thumbs down.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Many of these concepts made sense once I read the articles.  I even made first a little game where you roll two dice and the players have names.
#       I didn't incorporate rules yet as to winners and losers and the ability to bet money.

4)  Did you learn any new skills or tricks?

#      Instance seems to be really clear now.  I learned raise ArguementError

5)  How confident are you with each of the Learning Competencies?

#       I feel very confident on the ideas.  I still want to discuss DTC more and make sure that I have its correct role.

6)  Which parts of the challenge did you enjoy?

#       I loved created a class that can be called over and over again.  I also liked showing my daughter the little game that I made where she and I are two
#           of the players.

7)  Which parts of the challenge did you find tedious?

#        Not be sure that I was reading the RSPEC Failures correct.  They seemed too easy to fix and therefore I second guessed myself.
=end



