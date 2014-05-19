# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself and then later with Tony Leung to extract my keys of highest value].

-------------------Release 0 Run the Tests-------------------------------------------
=begin
rspec mode_spec.rb
FFFFF

Failures:

  1) mode is defined
     Failure/Error: defined?(mode).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./mode_spec.rb:9:in `block (2 levels) in <top (required)>'

  2) mode requires a single argument
     Failure/Error: method(:mode).arity.should eq 1
     NameError:
       undefined method `mode' for class `RSpec::Core::ExampleGroup::Nested_1'
     # ./mode_spec.rb:13:in `method'
     # ./mode_spec.rb:13:in `block (2 levels) in <top (required)>'

  3) mode returns the correct mode when mode is a unique integer
     Failure/Error: mode(array_1).should eq [5]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000102971f78>
     # ./mode_spec.rb:17:in `block (2 levels) in <top (required)>'

  4) mode returns the correct mode when mode is not a unique integer
     Failure/Error: mode(array_2).should eq [5,6]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001029704e8>
     # ./mode_spec.rb:21:in `block (2 levels) in <top (required)>'

  5) mode returns the correct mode for strings
     Failure/Error: mode(array_3).should eq ["banana", "cherry"]
     NoMethodError:
       undefined method `mode' for #<RSpec::Core::ExampleGroup::Nested_1:0x00000102976000>
     # ./mode_spec.rb:25:in `block (2 levels) in <top (required)>'

Finished in 0.00699 seconds
5 examples, 5 failures

Failed examples:

rspec ./mode_spec.rb:8 # mode is defined
rspec ./mode_spec.rb:12 # mode requires a single argument
rspec ./mode_spec.rb:16 # mode returns the correct mode when mode is a unique integer
rspec ./mode_spec.rb:20 # mode returns the correct mode when mode is not a unique integer
rspec ./mode_spec.rb:24 # mode returns the correct mode for strings
=end


-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

# What is the input?

#    The input is an array (numbers and strings).

# What is the output? (i.e. What should the code return?)

#    The ouput is the mode value.  If there is a unique mode then only one value.  If two properties have the same mode value, then
#        they will both be printed out as an array.

# What are the steps needed to solve the problem?

1a Finding the mode for an Array composed of numbers--------------------------------

Define a method called mode that takes a parameter or an array
  Define mode_hash = Hash.new
  Define an array to hold the keys of highest value (The mode)
  Sort this array 
  Assign a counter value of 1 to counter
  Call length on the array and assign this value to l
  
  for iteration num in 0..l
    if array_sorted values compared in sequence
      Increase counter by 1
    else #-----The array values are different and we need to terminate and move on
      puts array_sorted value and counter to screen #----- while testing
      place the array_sored value as a property and the counter value as a value into a Hash  #Need Hash defined above.
      Reset x to 1
    end else
  end for
  Define mode_hash_sorted and assign it to mode_hash calling sort_by {|key, value| value}

Assign max_variable the value of the value of the last entry using .last
Call select |key, valu|
  if val compared to max_variable[1] #[1], because we want the value
  array to hold mode is pushed the key
  end if 

  print array to hold mode
end method

Call mode and pass in an array


1b Finding the mode for an Array composed of strings--------------------------------

Same method for strings


-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

2a Finding the mode for an Array composed of numbers--------------------------------

def mode(array)
  mode_hash = Hash.new
  finalarray = []
  array_sorted = array.sort!
  print array_sorted
  puts
  l = array_sorted.length - 1
  x = 1

  for num in 0..l
    if array_sorted[num] == array_sorted[num + 1]
      x = x + 1
    else
      puts "#{array_sorted[num]}.......#{x}"
      mode_hash["#{array_sorted[num]}"] = x
      x = 1
    end
  end
  puts
  puts "Here is the hash:"
  print mode_hash
  mode_hash_sorted = mode_hash.sort_by {|key, value| value}
  puts
  puts "Here is the sorted hash:"
  print mode_hash_sorted
  
  maxval =  mode_hash_sorted.last
  mode_hash_sorted.select do |key, val| 
    if val == maxval[1]
      finalarray << key
    end
  end
  puts  
  print finalarray
  
end

modemode([20, 12, 9, 6, 1, 3, 4, 20, 20, 12, 15, 18, 1, 5, 1, 8, 1, 9, 19, 20])
puts


2b Finding the mode for an Array composed of strings--------------------------------

def mode(array)
  mode_hash = Hash.new
  finalarray = []
  array_sorted = array.sort!
  print array_sorted
  puts
  l = array_sorted.length - 1
  x = 1

  for num in 0..l
    if array_sorted[num] == array_sorted[num + 1]
      x = x + 1
    else
      puts "#{array_sorted[num]}.......#{x}"
      mode_hash["#{array_sorted[num]}"] = x
      x = 1
    end
  end
  puts
  puts "Here is the hash:"
  print mode_hash
  mode_hash_sorted = mode_hash.sort_by {|key, value| value}
  puts
  puts "Here is the sorted hash:"
  print mode_hash_sorted
  
  maxval =  mode_hash_sorted.last
  mode_hash_sorted.select do |key, val| 
    if val == maxval[1]
      finalarray << key
    end
  end
  puts  
  print finalarray
  
end

mode(["sand", "ants", "fish", "ants", "sand", "ants", "sand", "fish", "fish", "ants", "oceans", "love", "fish", "sand", "waves", "fun"])
puts


-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution

3a Finding the mode for an Array composed of numbers--------------------------------
3b Finding the mode for an Array composed of strings--------------------------------

def mode(array)
  mode_hash = Hash.new
  finalarray = []
  array_sorted = array.sort!
  l = array_sorted.length - 1
  x = 1
  for num in 0..l
    if array_sorted[num] == array_sorted[num + 1]
      x = x + 1
    else
      mode_hash["#{array_sorted[num]}"] = x
      x = 1
    end
  end

  mode_hash_sorted = mode_hash.sort_by {|key, value| value}
  
  maxval =  mode_hash_sorted.last
  mode_hash_sorted.select do |key, val| 
    if val == maxval[1]
      finalarray << key.to_i
    end
  end
  puts  
  print finalarray
  puts
end

mode(["sand", "ants", "fish", "ants", "sand", "ants", "sand", "fish", "fish", "ants", "oceans", "love", "fish", "sand", "waves", "fun"])
puts
mode([20, 12, 9, 6, 1, 3, 4, 20, 20, 12, 15, 18, 1, 5, 1, 8, 1, 9, 19, 20])
puts


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

#      I found that creating a hash that had each unique element as keys and their number of occurences to not be that difficult.
#      Where I struggled was finding a nice and sleek way of extracting all keys which had the highest values or occurences.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Finding a nice and sleek way of extracting all keys which had the highest values or occurences.
#      I figured there had to be a way, a method that would "take out" the mode.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Finally to take out the mode, I paired up with Tony.  I have to give him much of the credit.  We came up
#         with a procedure that looks at that value of the last element, then it iterates over the hash and selects
#         all elements that have the same value and puts these nicely in a new array.

4)  Did you learn any new skills or tricks?

#      I learned .last and had .select more solidified.  I also like Tony's syntax of << to move data.

5)  How confident are you with each of the Learning Competencies?

#      I am confident of the portion I worked out on my own.  The very last portion I will need to review and use 

6)  Which parts of the challenge did you enjoy?

#      Again, I really liked the puzzle/logic portion.  I lked not knowing how to do something, but knowing that eventually I will figure it out.

7)  Which parts of the challenge did you find tedious?

#       I did not find any part tedious.  The extraction of the mode from my sorted frequency array was challenging.




