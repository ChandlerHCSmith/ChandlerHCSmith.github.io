# U2.W4: Add it up!

# Complete each step below according to the challenge directions and require "u2_w4_harder_calculate_median_my_solution"
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

-------------------Release 0 Run the Tests-------------------------------------------
=begin 
rspec array_total_spec.rb
FFFFFFFF

Failures:

  1) total is defined as a method
     Failure/Error: defined?(total).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./array_total_spec.rb:8:in `block (2 levels) in <top (required)>'

  2) total requires a single argument
     Failure/Error: method(:total).arity.should eq 1
     NameError:
       undefined method `total' for class `RSpec::Core::ExampleGroup::Nested_1'
     # ./array_total_spec.rb:12:in `method'
     # ./array_total_spec.rb:12:in `block (2 levels) in <top (required)>'

  3) total returns the correct total of array 1
     Failure/Error: total(array_1).should eq 27
     NoMethodError:
       undefined method `total' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001021ccc28>
     # ./array_total_spec.rb:16:in `block (2 levels) in <top (required)>'

  4) total returns the correct total of array 2
     Failure/Error: total(array_2).should eq 43
     NoMethodError:
       undefined method `total' for #<RSpec::Core::ExampleGroup::Nested_1:0x000001021d37a8>
     # ./array_total_spec.rb:20:in `block (2 levels) in <top (required)>'

  5) sentence_maker is defined as a method
     Failure/Error: defined?(sentence_maker).should eq 'method'
       
       expected: "method"
            got: nil
       
       (compared using ==)
     # ./array_total_spec.rb:29:in `block (2 levels) in <top (required)>'

  6) sentence_maker requires a single argument
     Failure/Error: method(:sentence_maker).arity.should eq 1
     NameError:
       undefined method `sentence_maker' for class `RSpec::Core::ExampleGroup::Nested_2'
     # ./array_total_spec.rb:33:in `method'
     # ./array_total_spec.rb:33:in `block (2 levels) in <top (required)>'

  7) sentence_maker returns the grammatically correct sentence of the first sentence
     Failure/Error: sentence_maker(first_sentence).should eq "All my socks are dirty."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x000001021cfa18>
     # ./array_total_spec.rb:37:in `block (2 levels) in <top (required)>'

  8) sentence_maker returns the grammatically correct sentence of the second sentence
     Failure/Error: sentence_maker(second_sentence).should eq "Alaska has over 586 thousand miles."
     NoMethodError:
       undefined method `sentence_maker' for #<RSpec::Core::ExampleGroup::Nested_2:0x000001021d5558>
     # ./array_total_spec.rb:41:in `block (2 levels) in <top (required)>'

Finished in 0.00331 seconds
8 examples, 8 failures

Failed examples:

rspec ./array_total_spec.rb:7 # total is defined as a method
rspec ./array_total_spec.rb:11 # total requires a single argument
rspec ./array_total_spec.rb:15 # total returns the correct total of array 1
rspec ./array_total_spec.rb:19 # total returns the correct total of array 2
rspec ./array_total_spec.rb:28 # sentence_maker is defined as a method
rspec ./array_total_spec.rb:32 # sentence_maker requires a single argument
rspec ./array_total_spec.rb:36 # sentence_maker returns the grammatically correct sentence of the first sentence
rspec ./array_total_spec.rb:40 # sentence_maker returns the grammatically correct sentence of the second sentence
=end


-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

1a Adding up an Array-------------------------------------------------------------

#Write a method total which takes an Array of numbers as its input and returns their total (sum).

# What is the input?

#  	An Array of numbers

# What is the output? (i.e. What should the code return?)

# 	The sum of all of the numbers in the arrray.

# What are the steps needed to solve the problem?

=begin
Define  add_array_elements method with an argument of array

	Define a variable to store the total
	Define a variable that is the length of the array
	Set counter variable to 0

	while counter variable is less than array length
		Reset total to total plus the current element being accessed in the array
		Increase counter variable by 1
	end while 
		
	puts total

	end

Call method passing it an array of numbers

=end

1b Creating a sentence out an array of strings------------------------------------------------

#  Iterate through an array of single-word-strings concatenating them with a space between to create a proper sentence.
#     The first word will be capitalized.  There will be a space between each word.  There will be a period at the end of the sentence.

# What is the input?

#  	An Array of single-word-strings

# What is the output? (i.e. What should the code return?)

# 	A proper sentence composed of the words in order.

# What are the steps needed to solve the problem?

=begin

Define an array_of_words of single-word-strings
Define an empty sentence as a string ""
Define an empty array

  Determine the length of the array using .length

    Set sentence = array_of_words[0].captalize! + a space

  For loop using all of the indices starting at 1 and ending at 1 less than the length of array_of_words
    word = array_of_word[indice]
    Reset sentence as equal to sentence + array_of_words[next indice] + " "
  end for 

Assign sentence the value of sentence + array_of_words[l] + "."

puts sentence

=end




-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

2a Adding up an Array-------------------------------------------------------------

def add_array_elements(array)
	l = array.length
	total = 0
	i = 0
	while i < l
		total = total + array[i]
		i = i + 1
	end
	puts total
end

add_array_elements([1,2,3,4,5,6,7,8,9])
add_array_elements([7.5,5.25])

2b Creating a sentence out an array of strings--------------------------------------------

sentence = ""

array_sentence = []

def sentence_maker(array)
l = array.length - 1

word_1 = array[0].capitalize!
sentence = word_1 + " "

	for num in 1..l-1
		word = array[num]
		sentence = sentence + word + " "
	end

sentence = sentence + array[l]
sentence = sentence + "."
puts sentence
end

sentence_maker(["i", "had", "fun", "going", "to", "the", "beach", "with", "my", "son", "today"])



-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution

3a Adding up an Array-------------------------------------------------------------

def total(array)
	l = array.length
	sum = 0
	i = 0
	while i < l
		sum = sum + array[i]
		i = i + 1
	end
	puts sum
end

total([1,2,3,4,5,6,7,8,9])
total([7.5,5.25])

3b Creating a sentence out an array of strings--------------------------------------------


def sentence_maker(array)
l = array.length - 1

sentence = array[0].capitalize! + " "

	for num in 1..l-1
		word = array[num]
		sentence = sentence + word + " "
	end

sentence = sentence + array[l] + "."
puts sentence
end

sentence_maker(["i", "had", "fun", "going", "to", "the", "beach", "with", "my", "son", "today"])



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

#      I like the process overall.  I see that it produces a better sleeker end result.  Please read 6.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I need to look into pseudocoding standards more and see some good examples.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I don't know yet if my method for concatenating and creating a proper sentences was the slickest, but I feel like I came up with a level appropriate solution.

4)  Did you learn any new skills or tricks?

#      I feel like my programming skills in general are pulling together.  I feel like I am getting better at pseudocoding.

5)  How confident are you with each of the Learning Competencies?

#       Fairly confident.  I would like to see some good examples of pseudocode.  I will look at classmate's.

6)  Which parts of the challenge did you enjoy?

#       Solving the questions and making the code produce the end result!

7)  Which parts of the challenge did you find tedious?

#       At the moment, I find the pseudocoding tedious.  I do something similar in my mind and on paper.  However, I believe and can already see some fruit from working along the lines of this workflow.
=end




