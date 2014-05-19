# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

-------------------Release 0 Run the Tests-------------------------------------------

=begin
rspec letter_grade_spec.rb
FFFFFF

Failures:

  1) get_grade is defined as a method
     Failure/Error: defined?(get_grade).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./letter_grade_spec.rb:11:in `block (2 levels) in <top (required)>'

  2) get_grade returns "A" when the average is >= 90
     Failure/Error: get_grade(arrayA).should eq "A"
     NoMethodError:
       undefined method `get_grade' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000101293680>
     # ./letter_grade_spec.rb:14:in `block (2 levels) in <top (required)>'

  3) get_grade returns "B" when the average is >= 80
     Failure/Error: get_grade(arrayB).should eq "B"
     NoMethodError:
       undefined method `get_grade' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000101292118>
     # ./letter_grade_spec.rb:17:in `block (2 levels) in <top (required)>'

  4) get_grade returns "C" when the average is >= 70
     Failure/Error: get_grade(arrayC).should eq "C"
     NoMethodError:
       undefined method `get_grade' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000101290d40>
     # ./letter_grade_spec.rb:20:in `block (2 levels) in <top (required)>'

  5) get_grade returns "D" when the average is >= 60
     Failure/Error: get_grade(arrayD).should eq "D"
     NoMethodError:
       undefined method `get_grade' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000101297a28>
     # ./letter_grade_spec.rb:23:in `block (2 levels) in <top (required)>'

  6) get_grade returns "F" when the average is < 60
     Failure/Error: get_grade(arrayF).should eq "F"
     NoMethodError:
       undefined method `get_grade' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001012968f8>
     # ./letter_grade_spec.rb:26:in `block (2 levels) in <top (required)>'

Finished in 0.00717 seconds
6 examples, 6 failures

Failed examples:

rspec ./letter_grade_spec.rb:10 # get_grade is defined as a method
rspec ./letter_grade_spec.rb:13 # get_grade returns "A" when the average is >= 90
rspec ./letter_grade_spec.rb:16 # get_grade returns "B" when the average is >= 80
rspec ./letter_grade_spec.rb:19 # get_grade returns "C" when the average is >= 70
rspec ./letter_grade_spec.rb:22 # get_grade returns "D" when the average is >= 60
rspec ./letter_grade_spec.rb:25 # get_grade returns "F" when the average is < 60
=end

-------------------Release 1 Pseudocode-------------------------------------------
# 1. Pseudocode

# What is the input?

#     An array of test scores

# What is the output? (i.e. What should the code return?)

#     A letter grade: 'A','B','C','D','F'

# What are the steps needed to solve the problem?


Define method get_grade that accepts as an arguement an array
  Assign n the value of array.length
  Assigne sum the value of 0
  for iterate through all of the arrays elements num in 0..n
    sum = sum + array[num]
  end for
  Calculate average = (sum/n)
  if elsif Contol Flow
    Check if average >= 90
      puts 'A'
      Check elsif average < 90 && average >= 80 
      puts 'B'
      Check elsif average < 80 && average >= 70 
      puts 'C'
      Check elsif average < 70 && average >= 60 
      puts 'D'
      Check elsif average < 60 
      puts 'F'
    end if elsif Contol Flow
  end Define method
  
  Call method(array)

-------------------Release 2 Initial Solution-------------------------------------------
# 2. Initial Solution

def get_grade(array)
  n = array.length
  sum = 0.0

  for num in 0..n
    sum = sum + array[num].to_f   #Needed to convert array[num] to float was missed the first go through
  end

    puts sum
    puts n
    average = (sum/n)
    puts average

  if average >= 90
      puts 'A'
  elsif average < 90 && average >= 80 
      puts 'B'
  elsif average < 80 && average >= 70 
      puts 'C'
  elsif average < 70 && average >= 60 
      puts 'D'
  else average < 60 
      puts 'F'
  end 
end
  
get_grade([95,100])
get_grade([82,89])
get_grade([77,72,78,79])
get_grade([60,61])
get_grade([59,60])
get_grade([89,99,86,93,87,85,95,92,85,93,95,89,93])


-------------------Release 3 Refactored Solution-------------------------------------------
# 3. Refactored Solution

def get_grade(array)
  n = array.length
  sum = 0.0

  for num in 0..n
    sum = sum + array[num].to_f   #Needed to convert array[num] to float was missed the first go through
  end

    average = (sum/n)
  
  if average >= 90
      puts 'A'
  elsif average < 90 && average >= 80 
      puts 'B'
  elsif average < 80 && average >= 70 
      puts 'C'
  elsif average < 70 && average >= 60 
      puts 'D'
  else average < 60 
      puts 'F'
  end 
end
  
get_grade([95,100])
get_grade([82,89])
get_grade([77,72,78,79])
get_grade([60,61])
get_grade([59,60])
get_grade([89,99,86,93,87,85,95,92,85,93,95,89,93])


-------------------Release 4 My Reflections-------------------------------------------
# 4. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      The creating a method that used an array of numbers and then determining their sum and average was not too hard.
#      Using If/Elsif/Else and boollean was also not too hard.
#      At first I forgot to turn the array[num] into a float.  This caused the sum+array[num] to through an error regarding Fixnum coercion. 

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      How will I iterate through the array?
#      How will I determine the average?
#      Is there a better method.  (I found several: 
#                                                     sum = 0
#                                                     array.each { |a| sum+=a }
#
#                                                     array.inject{|sum,x| sum + x }
#
#                                                     several more on: http://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby   

)

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Just the float.

4)  Did you learn any new skills or tricks?

#      I thought of using each, but I couldn't fully see the syntax inside the {}.
#      The others I will have to test.

5)  How confident are you with each of the Learning Competencies?

#      I am very confident regarding my method.  I need to add to it other approaches.  

6)  Which parts of the challenge did you enjoy?

#      Again, I liked the logic, puzzle aspect.

7)  Which parts of the challenge did you find tedious?

#       I didn't find any of this challenge tedious...  :)   (Well, the pseudocoding is still an area that I need improvement in and clarification.)
=end