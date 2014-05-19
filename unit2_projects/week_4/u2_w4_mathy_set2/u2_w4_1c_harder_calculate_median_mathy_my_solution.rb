# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

-------------------Release 0 Run the Tests-------------------------------------------

=begin
rspec median_spec.rb
FFFFFF

Failures:

  1) median is defined as a method
     Failure/Error: defined?(median).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./median_spec.rb:10:in `block (2 levels) in <top (required)>'

  2) median requires a single argument
     Failure/Error: method(:median).arity.should eq 1
     NameError:
       undefined method `median' for class `RSpec::Core::ExampleGroup::Nested_1'
     # ./median_spec.rb:14:in `method'
     # ./median_spec.rb:14:in `block (2 levels) in <top (required)>'

  3) median returns the correct median of an odd-length array
     Failure/Error: median(array_1).should eq 4
     NoMethodError:
       undefined method `median' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001029ae798>
     # ./median_spec.rb:18:in `block (2 levels) in <top (required)>'

  4) median returns the correct median of an even-length array
     Failure/Error: median(array_2).should eq 5.5
     NoMethodError:
       undefined method `median' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001029b45d0>
     # ./median_spec.rb:22:in `block (2 levels) in <top (required)>'

  5) median returns the correct median for an unsorted array
     Failure/Error: median(array_3).should eq 4.5
     NoMethodError:
       undefined method `median' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001029b29d8>
     # ./median_spec.rb:26:in `block (2 levels) in <top (required)>'

  6) median returns the correct median for an array filled with strings **BONUS**
     Failure/Error: median(array_4).should eq "banana"
     NoMethodError:
       undefined method `median' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001029b15b0>
     # ./median_spec.rb:30:in `block (2 levels) in <top (required)>'

Finished in 0.00681 seconds
6 examples, 6 failures

Failed examples:

rspec ./median_spec.rb:9 # median is defined as a method
rspec ./median_spec.rb:13 # median requires a single argument
rspec ./median_spec.rb:17 # median returns the correct median of an odd-length array
rspec ./median_spec.rb:21 # median returns the correct median of an even-length array
rspec ./median_spec.rb:25 # median returns the correct median for an unsorted array
rspec ./median_spec.rb:29 # median returns the correct median for an array filled with strings **BONUS**
=end

-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

# What is the input?

#     An array of numbers.

# What is the output? (i.e. What should the code return?)

#     The median value of the array.

# What are the steps needed to solve the problem?

Define a method called median that accepts an array as an argument
array_sorted = the array argument with the sort method called
  print array_sorted # Only during testing
  Assign mid_index the value of the array_sorteds length/2 call the method floor.
  puts #Just during testing
  puts med_index #Just during testing
  puts #Just during testing
  
  if array_sorted.length is odd
    puts array_sorted[med_index]
  else
    Calculate the middle two pieces of datas average.  This is the median for an Odd array.
    puts cal_med 
  end else
end method


#Even Array to test
#Odd Array to test


-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

def median(array)
  array_sorted = array.sort!
  print array_sorted
  med_loc = (array_sorted.length/2).floor
  puts 
  puts med_loc
  puts
  
  if array_sorted.length%2 == 1
    puts array_sorted[med_loc]
  else
    cal_med = (array_sorted[med_loc].to_f + array_sorted[med_loc - 1].to_f)/2
    puts cal_med
  end
end


median([1,2,3,4])      #Even
median([1,2,3,4,5])   #Odd

median([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])      #Even
median([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21])   #Odd

-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution


def median(array)
  array_sorted = array.sort!
  med_loc = (array_sorted.length/2).floor
  
  if array_sorted.length%2 == 1
    puts array_sorted[med_loc]
  else
    cal_med = (array_sorted[med_loc].to_f + array_sorted[med_loc - 1].to_f)/2
    puts cal_med
  end
end


median([1,2,3,4])      #Even
median([1,2,3,4,5])   #Odd

median([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])      #Even
median([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21])   #Odd

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

#      Sorting the array was easy.  Finding the middle number was pretty easy to remember.
#      I had to keep clear that the index and "element number" are off by 1.    

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I had to look up the use of floor.  When I first used floor, I was also using Math and I keep getting an error that the method floor was undefined.
#      I solved this by researching floor on several websites, Stackoverflow was one of them.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      The structure overall was pretty easy to follow.

4)  Did you learn any new skills or tricks?

#      I believe that I have a clearer understanding of how to call floor.

5)  How confident are you with each of the Learning Competencies?

#       My confidence is around 8.

6)  Which parts of the challenge did you enjoy?

#       I liked the logic, the puzzle.

7)  Which parts of the challenge did you find tedious?

#       I feel like I am not sure about the pseudocode, so it is somewhat tedious. 




