# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

=begin
def assert
  puts "Processing..."
  raise "Assertion failed!" unless yield 
  puts "True!"
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
=end


# 2. Pseudocode what happens when the code above runs

#   When the above code is run the following results:
=begin
Processing...
True!
Processing...
u2_w6_testing_with_assert_statements.rb:10:in `assert': Assertion failed! (RuntimeError)
	from u2_w6_testing_with_assert_statements.rb:16:in `<main>'
=end

#   What happens?

#     If the boolean block evaluates to true, then "Assertion failed!" is not displayed and the program continues to run.
#     If the boolean block evaluates to false, then "Assertion failed!" is displayed and the program ends

# Let's look at the following line:  assert {name == billybob}
 #  The assert portion calls the method assert.
 #  Then while inside the assert method, an occurence of yield gives control back to the calling line.  When this is done, the block "name == billybob" is passed into the method and its value, which in this cause is false causes the unless to be triggered.  When using the block "name == billybob", or false, the unless is triggered and raise "Assertion failed!" is printed.  If the block is true, the program continues to run.
 

#   Write out in pseudocode what is happening with each assert method call.  Also describe succintly what is happening with the error messagee

#  I have done this above, however it was done more in essay format.
#  Here is the pseudocode:

      #   Define method assert
          #  raise "Assertion failed!" using until which only evaluates if false
      #   End method
      
  #  Assign local varibale name to the string "bettysue" 
  
  #  call assert and pass the boolean: name == "bettysue"        (This will not triger the yield and the program will continue to run)
  #  call assert and pass the boolean: name == "billybob"        (This will triger the yield and the program will terminate)

# 3. Copy your selected challenge here

class CreditCard

	def initialize(cc)
			@cc =cc
			@split_cc_integers = []
			@odd_cc_integers = []
			@even_cc_integers = []
			@modified_results_from_odd_cc_integers = []
			@sum_evens = 0
			@sum_odds = 0
			@checking_num_of_digits = cc.to_s.split("").length
		unless @checking_num_of_digits == 16
      		raise ArgumentError.new("This card seems to not have the appropriate number of digits")
    	end
	end

# -- Convert input integer to an Array data structure (However, now they are strings.)
	def check_card
		split_cc = @cc.to_s.split("")

# -- Convert string to an array of integers
			l = split_cc.length - 1
		for num in 0..l
			@split_cc_integers << split_cc[num].to_i
		end

# -- Now we split the original array of integers into two arrays of even indices and odd indices 
		l_half = l/2


# ------ EVENS -------
		for num in 0..l_half
			evens = 2*num + 1
			@even_cc_integers << @split_cc_integers[evens]
		end

		total_of_evens = @even_cc_integers.each {|x| 
			@sum_evens = @sum_evens + x
			}

# ------ ODDS -------
		for num in 0..l_half
			odds = 2*num
			@odd_cc_integers << @split_cc_integers[odds]
		end

		@odd_cc_integers.each {|odd|
		odd = 2*odd
		if odd < 10
			@modified_results_from_odd_cc_integers << odd
		else
			tens = odd/10
			@modified_results_from_odd_cc_integers << tens
			ones = odd%10
			@modified_results_from_odd_cc_integers << ones
		end
			}

		total_of_odds = @modified_results_from_odd_cc_integers.each {|odd| 
			@sum_odds = @sum_odds + odd
			}

# ------ ODDS DONE -------
# ------ Validation DONE -------
		grand_total = @sum_evens + @sum_odds

		if grand_total%10 == 0
      x = "valid"
      puts "This is a #{x} number!"
			return true
		else
      y = "invalid"
      puts "This is an #{y} number!"
			return false
		end
	end
end

#card = CreditCard.new(4408041234567893)
#card.check_card
#card = CreditCard.new(4408041234567892)
#card.check_card

#card = CreditCard.new(4408041234567892754)
#card.check_card




# 1. DRIVER TESTS GO BELOW THIS LINE


#puts CreditCard.new(4408041234567893).check_card == true
#puts CreditCard.new(4408041234567892).check_card == false


# 4. Convert your driver test code from that challenge into Assert Statements


def assert
  puts "Processing..."
  raise "Assertion failed!" unless yield 
  puts "True!"
end

#name = "bettysue"
assert { CreditCard.new(4408041234567893).check_card == true }
assert { CreditCard.new(4408041234567892).check_card == true }   # Needs to not be true to trigger teh "Assertion Failed!" message.

# puts CreditCard.new(4408041234567893).check_card == true
# puts CreditCard.new(4408041234567892).check_card == false


# 5. Reflection

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Understanding that the boollean statement must be false to trigger the Assertion Error.  Realizing that the block is passed in at the yield and then assessed.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I did have to double check how th unless and yield are working in combination.  This is why you see line 10 and 12, as well as, line 158 and 160.  These 
#         were put in to double check how all of the lines werw being processed.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I had to write the lines described in answer 2) to double check how the yield and unless were working in combination.  I did remember that the unless works 
#         off of falses, where as if, while, until all work off of trues.

4)  Did you learn any new skills or tricks?

#      I like the assert/assertion failed! method as a way to test code.  I feel like it is a bit clearer to the person reading the console and would speed up debugging.


5)  How confident are you with each of the Learning Competencies?

#      I feel relatively strong.  At the moment I am not sure when theis method could not be employeed, however, I am interested and open to knowing examples
#         where it does fail.  I am also interested in learning other methods that help guide the coder/programmer in writing good stable code. 

6)  Which parts of the challenge did you enjoy?

#       I really  enjoyed determining the   (raise "Assertion failed!" unless yield) line's logic.  I was away from Internet access and thought that my method was
#         kinda cool. 

7)  Which parts of the challenge did you find tedious?

#      I did not find any of this challenge tedious.  I quite enjoyed it.  
=end































