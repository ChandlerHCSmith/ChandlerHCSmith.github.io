# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input?

#  	The input is an array, an integer, and an element to possibly be added to the array.

# What is the output? (i.e. What should the code return?)

#  	If the original array is longer than the integer, the original array is returned.
#   If the origial array is shorter than the integer, then element(s) are added to the end of the array.
#  		What is added is up to the coder.  You could add a string, or nil, or an interger.

# What are the steps needed to solve the problem?

#  I tried over and over to solve this problem and continued to get a private method error.  

#  Create a class Array
	#  Define method pad_array that accepts: an array, a number, and b
		#  Determine the length of the array using .length
		#  Calculate j by taking the number and subtracting l (This will be used for a For loop)
	# If the array's length is greater than number
		# Just simply print array
	# Else
		# Run a For Loop num 0..j
			# push b to the array
		# End For Loop
	# End If/Else
	# Print array
#  End Defintion

	#  Define method pad_array! that accepts: an array, a number, and b
		#  Determine the length of the array using .length
		#  Calculate j by taking the number and subtracting l (This will be used for a For loop)
	# If the array's length is greater than number
		# Just simply print array
	# Else
		# Run a For Loop num 0..j
			# push b to the array
		# End For Loop
	# End If/Else
	# Print array
#  End Defintion
# End class

# 2. Initial Solution

class Array

  def pad_array(array, number, b)
  	l = array.length
  	j = number - l
    if l >= number
      print array
    else
    	for num in 0..j
        array << b
      	end
    end
    print array
  end

  puts
  puts 

  def pad_array!(array, number, b)
  	l = array.length
  	j = number - l
    if l >= number
      print array
    else
    	for num in 0..j
        array << b
      	end
    end
    print array
  end
  puts 
  puts
end

array_2 = ["tish", "pish"]

puts array_2.pad_array(array_2, 5,"turtles")
puts array_2.pad_array!(array_2, 9,"turtles")


# 3. Refactored Solution

class Array

  def pad_array(array, number, b)
    if array.length >= number
      print array
    else
    	for num in 0..number - array.length
        array << b
      	end
    end
    print array
  end

  puts
  puts 

  def pad_array!(array, number, b)
    if array.length >= number
      print array
    else
    	for num in 0..number - array.length
        array << b
      	end
    end
    print array
  end
  puts 
  puts
end

array_2 = ["tish", "pish"]

puts array_2.pad_array(array_2, 5,"turtles")
puts array_2.pad_array!(array_2, 9,"turtles")

#  This isn't much refactoring.  After looking at marekpwk's solution, I see a really cool use of self and .times that would shorten
#  		my code by 11 lines.  I understand marekpwk's solution, but cannot access this type of think just tonight, to make it my own instead
#     of copying will work on that for the 07_Refactor Review challenge.


# 4. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      The idea of creating a method that accepted several arguments worked well.  Using If to test the length
#   		of the array to that of the number to see if it would be padded or not.  I like the use of << to push to 
#  			an array.  I faced the problem of continuing to get a private method error.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I could have easily called the method in the following style method(array, number, b).  However, we were suppose
# 			to use the . style of calling.  
#  	   The private method error was a problem.  I on the web and figured it out.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      The idea didn't seem too difficult at first.  It was the private method error that haunted me for quite some time.

4)  Did you learn any new skills or tricks?

#      I learned using classes when using the . style.  Is this related to classes and calling classes in CSS?

5)  How confident are you with each of the Learning Competencies?

#      I want to experiment with classes more, but the overall idea I feel pretty strong on. 

6)  Which parts of the challenge did you enjoy?

#       Again, I really enjoy trying to figure out how to accomplish a task using the code.

7)  Which parts of the challenge did you find tedious?

#        I really didn't find any of this challenge tedious.
=end










