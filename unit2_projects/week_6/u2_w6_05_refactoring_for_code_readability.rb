# U2.W6: Refactoring for Code Readability


#--------------------------------------------------------------------------------------------------------

=begin
Learning Competencies

  Explain what code is doing
  Refactor for clarity and readability

Summary

  Using the goals below, choose a challenge solution from Class Warfare, Validate a Credit Card Number. This can be anyone's solution, 
  but if you notice there's a lot of room for improvement with your own code, start with that. Find other's solutions by browsing the branches 
  (just like you would to comment on a random person's solution).

  Paste the original unrefactored code in your gist, and as you refactor, make notes of the changes you are making to achieve optimal readability. 
  Include those notes along with the refactored version in your my_solution.rb file.

Goals of Readable Code

  Eliminate repetition by using looping and branching wisely
  Complex operations are decomposed into constituent parts
  Descriptive names for methods, variables, classes, and modules
  Methods are small and behavior is obvious
  Minimizes need for comments because the code tells you what it is doing
  Code is formatted with proper indentation for optimal readability
=end

#--------------------------------------------------------------------------------------------------------

# I worked on this challenge [by myself and then with Gannon].


# Original, UnRefactored Solution

#--------------------------------------------------------------------------------------------------------

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


#--------------------------------------------------------------------------------------------------------

# Refactored Solution (I have taken my original solution and reworked.  I used more .methods to accomplish 
#  		goals and know that there is still more tightening that can be accomplished.  I also know from my research
# 		that there is also more shortening/adding-to-readability that can happen knowing the right .methods in order.)

class CreditCard

  def initialize(ccn)
    @ccn =ccn
    @ccn_as_an_array_of_single_integers = []
    @even_ccn_integers = []
    @modified_results_from_odd_ccn_integers = []
    @sum_evens = 0
    @sum_odds = 0
    unless @ccn.to_s.split("").length == 16
        raise ArgumentError.new("This card seems to not have the appropriate number of digits.")
      end
  end

  def check_card

# -- Convert input integer to an array of integers, by spliting at the "no space" and then converting this result
#     into an integer
      @ccn.to_s.split("").to_a.each {|x| @ccn_as_an_array_of_single_integers << x.to_i}

# -- Now we split the original array of integers into two arrays of even indices and odd indices using a for loop
#     and .pop to take a value off of the end
    for num in 0..((@ccn_as_an_array_of_single_integers.length - 1)/2)
      @even_ccn_integers << @ccn_as_an_array_of_single_integers.pop

# - Sum of all odd elements after being doubled and split------
      o = 2*@ccn_as_an_array_of_single_integers.pop
      if o < 10
        @modified_results_from_odd_ccn_integers << o
      else
        @modified_results_from_odd_ccn_integers << 1
        @modified_results_from_odd_ccn_integers << o%10
    end
  end
    
# - Sum of all evens elements ---------
    total_of_evens = @even_ccn_integers.each {|x| 
      @sum_evens = @sum_evens + x}

# ------ Validation -------
    total_of_odds = @modified_results_from_odd_ccn_integers.each {|odd| 
      @sum_odds = @sum_odds + odd}     
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

# 1. DRIVER TESTS GO BELOW THIS LINE

puts CreditCard.new(4408041234567893).check_card == true
puts CreditCard.new(4408041234567892).check_card == true
card = CreditCard.new(4408041234567892754)
card.check_card
puts CreditCard.new(4408041234567892754) == "This card seems to not have the appropriate number of digits"

#  	(My code has been shortened from 54 active lines of code to 36.  Sections have been commented.
# 		variables have been renamed to be less abstract, unnecessary/repetitive lines have been condensed and eliminated
#  		more methods have been applied to make the code more DRY.)

#   (I worked out a refactoring of my original code.  I then Peer-Paired with Gannon, who had Peer-Paired with Tony and
	#  	then Ernie.)

	#  Here is the solution they came to and then Gannon and I worked through again:

class CreditCard

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number.to_s.chars.map(&:to_i)
#    CHCS: The card number converted to a string, then these chars are mapped to an array as integers)
    raise ArgumentError.new("Card number must be exactly 16 digits.") unless @card_number.size == 16
    validate_card_num_length
  end

  def check_card
    card_number.map!.with_index { |element, i| i.even? == true ? element * 2 : element } 
#    CHCS: Each element of card_number is scrutinized and the even integers are doubled and then placed back 
#  		in card_number
    card_number.join.chars.map(&:to_i).reduce(:+) % 10 == 0
# 	 CHCS: I still have some questions on this series of methods/calls.  I know that this is how we are producing
# 		the sum of all numbers that 10 or smaller.
  end
end

#(Tony, Gannon, and Ernie did a great job of putting these pieces into action.  I knew some of the methods, was thrilled
#  	to learn some new methods, and was glad to see it all nicely strung together.)

# (CHCS: My reflections and notes)

# Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      There were many times that I had written a variable explicitly, like:
   
		o = @ccn_as_an_array_of_single_integers.pop
		o = 2*o
		if o < 10
	
	Which is clear, but unnecessary.  Instead:

    	o = 2*@ccn_as_an_array_of_single_integers.pop
   		if o < 10

	There other times where I was able to combine operations and methods into one line that is clearer.
		For example, here is the conversion of the credit card number to an array of each digit as a string.
		Then, I iterate through the array and convert each element to an integer and place this answer in a 
			new array:

		split_cc = @cc.to_s.split("")

# -- Convert string to an array of integers
		l = split_cc.length - 1
		for num in 0..l
			@split_cc_integers << split_cc[num].to_i
		end

	As an alternative to this, all of these actions can be accomplished in one line:	

      @ccn.to_s.split("").to_a.each {|x| @ccn_as_an_array_of_single_integers << x.to_i}



2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I wanted a nice way to remove a piece of the array one at a time instead of using my odd/even num generators.
			This resulted in thinking of .first or .last and ultimimately of .pop.
			Resources: Tony and Ernie via Gannon.  I also looked atStackOverFlow, Ruby-Docs, and several other sites.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I simply need more methods and a few examples of their use.  I will need to search the internet this week and 
			tap into other Boots.

4)  Did you learn any new skills or tricks?

#       .chars
		.map(&:to_i)
		.with_index { |element, i| i.even? == true ? element * 2 : element } 
		.join
		.chars
		.reduce(:+)  (I understand this one the least.)

5)  How confident are you with each of the Learning Competencies?

#       I feel like I was able to reduce the number of lines of my code and I was also able to increase readability.
		I know that there is quite a bit to learn and many people to learn from.

6)  Which parts of the challenge did you enjoy?

#       Trying to understand the best way to minimize my code and eliminate repetition.  I also enjoyed using outcomes
			implicitly as described in 1).

7)  Which parts of the challenge did you find tedious?

#        I liked the challenge and I enjoyed working with Gannon and gaining from Tony and Ernie's experience and knowledge.
=end

