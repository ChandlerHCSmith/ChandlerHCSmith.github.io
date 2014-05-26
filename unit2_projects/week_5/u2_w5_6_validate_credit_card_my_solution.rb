# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself].

# Release 0. Test (RSPEC Results)

=begin
Chandlers-MacBook-Pro:6_validate_credit_card ChandlerHCSmith$ RSPEC credit_card_spec.rb
F..FFF

Failures:

  1) CreditCard#initialize Expects a single argument for the card
     Failure/Error: CreditCard.instance_method(:initialize).arity.should eq 1
       
       expected: 1
            got: 0
       
       (compared using ==)
     # ./credit_card_spec.rb:6:in `block (3 levels) in <top (required)>'

  2) CreditCard#check_card expects no arguments to be passed
     Failure/Error: CreditCard.instance_method(:check_card).arity.should be_zero
     NameError:
       undefined method `check_card' for class `CreditCard'
     # ./credit_card_spec.rb:24:in `instance_method'
     # ./credit_card_spec.rb:24:in `block (3 levels) in <top (required)>'

  3) CreditCard#check_card returns true for a valid card
     Failure/Error: card = CreditCard.new(4408041234567893)
     ArgumentError:
       wrong number of arguments(1 for 0)
     # ./credit_card_spec.rb:28:in `initialize'
     # ./credit_card_spec.rb:28:in `new'
     # ./credit_card_spec.rb:28:in `block (3 levels) in <top (required)>'

  4) CreditCard#check_card returns false for a bad card
     Failure/Error: card = CreditCard.new(4408041234567892)
     ArgumentError:
       wrong number of arguments(1 for 0)
     # ./credit_card_spec.rb:34:in `initialize'
     # ./credit_card_spec.rb:34:in `new'
     # ./credit_card_spec.rb:34:in `block (3 levels) in <top (required)>'

Finished in 0.01417 seconds
6 examples, 4 failures

Failed examples:

rspec ./credit_card_spec.rb:5 # CreditCard#initialize Expects a single argument for the card
rspec ./credit_card_spec.rb:23 # CreditCard#check_card expects no arguments to be passed
rspec ./credit_card_spec.rb:27 # CreditCard#check_card returns true for a valid card
rspec ./credit_card_spec.rb:33 # CreditCard#check_card returns false for a bad card
=end


#-----------------*******************-------------------------

# ----------After I fixed all of the failures ----------------

#  Finished in 0.00652 seconds
#  6 examples, 0 failures


# 2. Pseudocode

# Input:
	
#  	An integer

# Output:

#  	Returns true if it is a valid card# or returns false if it is an invalid card#
# 	Raises an ArgumentError if the number passed does not have 16 digits

# Steps:

# 	Define Class CreditCard

	# 	Define Initialize that accepts only the credit card number.
		#  Define an @cc for the credit card value
		#  Define @sum_evens and set it equal to 0 (To be used later).
		#  Define @sum_odds and set it equal to 0 (To be used later).
		#  Define @split_cc_integers as []  (To be used to hold the credit card number turned into a string.)
		#  Define @even_cc_integers as []  (To be used to hold the value of the elements that have even locations.)
		#  Define @odd_cc_intergers as []  (To be used to hold the value of the elements that have odd locations.)
		#  Define @mod_odd_cc_integers as [] (To hold the doubled and sometimes split values from odd locations.)
		#  Define @checking_num_of_digits = to cc converted to a string and split at ("") placed into an array and then .length called
		#  unless @checking_num_of_digits == 16
			#  raise ArgumentError ("Wrong number of digits")
		#  End unless
	# 	end def initialize

	#  Define method check_card
		#  Assign variable split_cc to the array, cc.to_s.split("")
		#  Set l = to split_cc.length - 1 (To use in iterations)
		  # For Loop 0..l 
		    #  @split_cc_intergers get pushed all of the elements of split_cc converted to integers
		  # End For Loop

		# Assign l_half = to l/2  (We will always be working with half of the numbers in either arrays of even or odd)

	# ----Evens

		# For Loop from 0 to l_half inclusively
		  	#  Set evens to 2*num +1   (This will produce all of the correct indice values to be the same as location values.)
		  	#  @even_cc_intergers push @split_cc_integers[even]
		# End for loop

		#  Assign total_of_evens to @even_cc_integers.each |x|
			# Assign recursively the @sum_evens to @sum_evens + the value from x

	# ----Odds

		# For Loop from 0 to l_half inclusively
		  	#  Set evens to 2*num   (This will produce all of the correct indice values to be the same as location values.)
		  	#  @odd_cc_intergers push @split_cc_integers[odd]
		# End for loop

		#  Iterate through @odd_cc_integers using .each |odd|
		  # Assign odd the value of odd times 2  (This doubles the odd location values) 

		#  If odd < 10
			#  @modified_results_from_odd_cc_integers << odd
		#  Else
			#  tens = odd/10
			#  @modified_results_from_odd_cc_integers << tens
			#  ones = odd%10
			#  @modified_results_from_odd_cc_integers << ones
		# End If/Else that check the value of the doubled numbers and pushes them or divides their digits.
		
	# -----Summing of odds

		#  Set total_of_odds = to the Iteration of @modified_results_from_odd_cc_integers using .each |odd|
			#  Assign recursively the @sum_odds to @sum_odds + odd
			# Assign recursively the @sum_evens to @sum_evens + the value from x

	# -----Validation 

		#  Set grand_total = to @sum_evens + @sum_odds
		#  If grand_total%10 == 0
			#  Return true
		#  Else
			#  Return false

# Assign card the value of CreditCard initialized passing a numeric 16 digit credit card number
# Call check_card on this instance


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# Even and Odd refer to the element location of the original array composed of all the numbers from the credit card used in order

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
		print split_cc

# -- Convert string to an array of integers


		l = split_cc.length - 1

	for num in 0..l
		@split_cc_integers << split_cc[num].to_i
	end
		print @split_cc_integers

# -- Now we split the original array of integers into two arrays of even indices and odd indices 

		l_half = l/2


# ------ EVENS DONE -------

	for num in 0..l_half
		evens = 2*num + 1
		@even_cc_integers << @split_cc_integers[evens]
	end
		print @even_cc_integers
		puts
		puts 

		total_of_evens = @even_cc_integers.each {|x| 
			@sum_evens = @sum_evens + x
		}
		print @sum_evens
		puts
		puts 


# ------ EVENS DONE -------
# ------ ODDS DONE -------

	for num in 0..l_half
		odds = 2*num
		@odd_cc_integers << @split_cc_integers[odds]
	end
		print @odd_cc_integers
		puts
		puts 

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

		print @modified_results_from_odd_cc_integers

		total_of_odds = @modified_results_from_odd_cc_integers.each {|odd| 
		@sum_odds = @sum_odds + odd
		}

		print @sum_odds
		puts
		puts 

# ------ ODDS DONE -------

# ------ Validation DONE -------

		grand_total = @sum_evens + @sum_odds
		print grand_total

		if grand_total%10 == 0
			print "This is a valid number."
			return true
		else
			print "This is an invalid number."
			return false
		end
	end
end

card = CreditCard.new(4408041234567893)
card.check_card
card = CreditCard.new(4408041234567892)
card.check_card
card = CreditCard.new(4408041234567892754)
card.check_card


# 4. Refactored Solution

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
			return true
		else
			return false
		end
	end
end

card = CreditCard.new(4408041234567893)
card.check_card
card = CreditCard.new(4408041234567892)
card.check_card
card = CreditCard.new(4408041234567892754)
card.check_card




# 1. DRIVER TESTS GO BELOW THIS LINE


puts CreditCard.new(4408041234567893).check_card == true
puts CreditCard.new(4408041234567892).check_card == false
puts CreditCard.new(4408041234567892754) == "This card seems to not have the appropriate number of digits"

# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Converting the Integer into an array of strings and then converting them to integers while separating them
#   		into two new arrays.  One array for odd locations and the other array for even locations.  Then I could 
# 			easily add up all of the even location elements and double all of the odd location elements.
# 			Next, I used an IF/Else and the modulo to separate any doubling results equal to or larger than 10 into their 
#  			two digits.  Next I summed all of these modified doubled odd location elements.
#  			Finally, I combined the sum of odds and modified sum of evens and used an IF/Else to decide if true or false
#  			should be returned. 

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I did have to think about how to separate the modified doubled odd location elements - if they were 10 or larger.
#  			I quickly came up with using modulo and pushing outcomes to a new array and then summing.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      This one seemed very straight forward.  Driver Tests still a bugging me.

4)  Did you learn any new skills or tricks?

#      I don't think I learned new skills some much as I had several: indices, .split, if/else, modulo, .each, ||, @ solidified.

5)  How confident are you with each of the Learning Competencies?

#       I am very confident.  I believe that there is a shorter method.  I haven't found it yet.

6)  Which parts of the challenge did you enjoy?

#       I really liked that puzzle and logic.  I really liked the complexity.  I really liked the real world feeling, like I was doing something 
#  			really cool.

7)  Which parts of the challenge did you find tedious?

#        Keeping track of all of the variable names.
=end


