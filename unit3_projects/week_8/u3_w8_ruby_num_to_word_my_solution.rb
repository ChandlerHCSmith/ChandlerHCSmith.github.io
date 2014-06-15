# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself].

# 2. Pseudocode

# 	Ask the user for input of a number between 0 and 10,000.
# 	Assign input = gets.chomp.to_i

# 	Assign th = input/1000   (This determines how many thousands are necessary)
# 	Assign th_rem = input%1000  (This determines how what number is left after you "throw away" the thousands)
# 	Assign h = th_rem/100  (This determines how many hundreds are necessary)
# 	Assign hun_rem = th_rem%100  (This determines what number is left after you "throw away" the hundreds)
# 	Assign t = hum_rem/10  (This detemines how many tens are needed)
# 	Assign 0 = hun_re%10  (This determines the number in the one's column)

#   Assign word = ""

#-----if/else control flow

# 	If n == 0 
# 	 	puts "Zero"
# 	End if

#-----------thousands
# 	If th == 10
#  		Assign word = word + "Ten Thousand"
# 	If th == 9
#  		Assign word = word + "Nine Thousand"
#    (conintue until all thousands are accounted for.)
# 	Else 
# 		Assign word = word + ""    (If there are not any thousands.  This does not affect the string)
# 	End IF/Elsif/Else

#-----------hundreds
# 	If th == 9
#  		Assign word = word + "Nine Hundred"
# 	If th == 8
#  		Assign word = word + "Eight Hundred"
#    (conintue until all hundreds are accounted for.)
# 	Else 
# 		Assign word = word + ""    (If there are not any hundreds.  This does not affect the string)
# 	End IF/Elsif/Else
		
#------------ 99 - 20
# 	If hun_rem < 100 AND hun_rem > 19

# 		If t == 9
#  			Assign word = word + "Ninety"
# 		Elsif t == 8
#  			Assign word = word + "Eighty"
#   	 (conintue until all tens are accounted for.)
# 		Else 
# 		End IF/Elsif/Else

#  		Start a nested If/Elsif/Else to check on the ones values
# 			# 		If t == 9
#  						Assign word = word + "-Nine"
# 					If t == 8
#  						Assign word = word + "-Eight"
#   	 			(conintue until all oness are accounted for.)
# 					Else 
# 						Assign word = word + ""    (If there are not any hundreds.  This does not affect the string)
# 					End IF/Elsif/Else
# 	 

#------------ 19 - 10
#	Elsif hun_rem < 20 && hun_rem > 9

#		If hun_rem == 19
#			Assign word = word +  "Nineteen"
#		Elsif hun_rem == 18
#			Assign word = word +  "Eighteen"
#   	(conintue until all numbers 11 thought 19 are accounted for.)
#		End IF/Elsif/Else

#------------ 1 - 9

# 	Else
#		If o == 9
#			Assign word = word +  "Nine"
#		Elsif o == 8
#			Assign word = word +  "Eight"	
#   	(conintue until all numbers 1 thought 10 are accounted for.)
#		End If/Elsif/Else
# 	END Original If/Elsif/Else

# 	puts word


# 3. Initial Solution

=begin
puts ""
puts "Please enter a number between 0 and 10,000"
original_num = gets.chomp.to_i
n = original_num
=end

=begin
th = n/1000
hundreds = n%1000
h = hundreds/100
t = n%100
ones = n%10
tens = t - ones
=end
=begin
#---------------
th = n/1000
#puts "th = #{th}"

th_rem = n%1000
#puts "th_rem = #{th_rem}"

h = th_rem/100
#puts "h = #{h}"

hun_rem = th_rem%100
#puts "hun_rem = #{hun_rem}"

t = hun_rem/10
#puts "t = #{t}"

o = hun_rem%10
#puts "o = #{o}"
#---------------

word = ""

#------------ 0

if n == 0
	 word = word + "Zero"
	 puts word
end

#-----------thousands

if th == 10
	word = word + "Ten Thousand"
elsif th == 9
	word = word + "Nine Thousand "
elsif th == 8
	word = word + "Eight Thousand "
elsif th == 7
	word = word + "Seven Thousand "
elsif th == 6
	word = word + "Six Thousand "
elsif th == 5
	word = word + "Five Thousand "
elsif th == 4
	word = word + "Four Thousand "
elsif th == 3
	word = word + "Three Thousand "
elsif th == 2
	word = word + "Two Thousand "
elsif th == 1
	word = word + "One Thousand "
else 
	word = word + ""
end

#-----------hundreds
	
if h == 9
	word = word + "Nine Hundred "
elsif h == 8
	word = word + "Eight Hundred "
elsif h == 7
	word = word + "Seven Hundred "
elsif h == 6
	word = word + "Six Hundred "
elsif h == 5
	word = word + "Five Hundred "
elsif h == 4
	word = word + "Four Hundred "
elsif h == 3
	word = word + "Three Hundred "
elsif h == 2
	word = word + "Two Hundred "
elsif h == 1
	word = word + "One Hundred "
else 
	word = word + ""
end	
		
#------------ 99 - 20

if hun_rem<100 && hun_rem>19
	if t == 9
		word = word + "Ninety"
	elsif t == 8
		word = word + "Eighty"
	elsif t == 7
		word = word + "Seventy"
	elsif t == 6
		word = word + "Sixty"
	elsif t == 5
		word = word + "Fifty"
	elsif t == 4
		word = word + "Fourty"
	elsif t == 3
		word = word + "Thirty"
	else
		word = word + "Twenty"
	end
		if o == 9
			word = word +  "-Nine"
		elsif o == 8
			word = word +  "-Eight"
		elsif o == 7
			word = word +  "-Seven"
		elsif o == 6
			word = word +  "-Six"
		elsif o == 5
			word = word +  "-Five"
		elsif o == 4
			word = word +  "-Four"
		elsif o == 3
			word = word +  "-Three"
		elsif o == 2
			word = word +  "-Two"
		elsif o == 1
			word = word +  "-One"
		else
			word = word +  ""
		end

#------------ 19 - 10

elsif hun_rem <20 && hun_rem > 9
	if hun_rem == 19
		word = word +  "Nineteen"
	elsif hun_rem == 18
		word = word +  "Eighteen"
	elsif hun_rem == 17 
		word = word +  "Seventeen"
	elsif hun_rem == 16
		word = word +  "Sixteen"
	elsif hun_rem == 15
		word = word +  "Fifteen"
	elsif hun_rem == 14
		word = word +  "Fourteen"
	elsif hun_rem == 13
		word = word +  "Thirteen"
	elsif hun_rem == 12
		word = word +  "Twelve"
	elsif hun_rem == 11
		word = word +  "Eleven"
	elsif hun_rem == 10
		word = word + "Ten"
	end

#------------ 1 - 10

else
	if o == 9
		word = word +  "Nine"
	elsif o == 8
		word = word +  "Eight"
	elsif o == 7
		word = word +  "Seven"
	elsif o == 6
		word = word +  "Six"
	elsif o == 5
		word = word +  "Five"
	elsif o == 4
		word = word +  "Four"
	elsif o == 3
		word = word +  "Three"
	elsif o == 2
		word = word +  "Two"
	elsif o == 1
		word = word +  "One"
	else
		word = word +  ""
	end
end

puts word
=end

#  *****  Then I thought, this isn't very efficient.  So, I refactored it using arrays.  It is a bit better.

# 4. Refactored Solution

def num_to_word(n)
	if n >= 0 && n <= 10000

		#------- cut up the original number into pieces to be used to select words----------

		th = n/1000
		th_rem = n%1000
		h = th_rem/100
		hun_rem = th_rem%100
		t = hun_rem/10
		o = hun_rem%10

		# --------- Establish the variable word and assign it a value of zero.
		word = ""

		#------------ 0
		if n == 0
			 word = word + "Zero"
			 puts word
		end

		#-----------thousands
		thousands = ["", "One Thousand ", "Two Thousand ", "Three Thousand ", "Four Thousand ", "Five Thousand ", "Six Thousand ", "Seven Thousand ", "Eight Thousand ", "Nine Thousand ", "Ten Thousand"]
		word = word + thousands[th]

		#-----------hundreds
		hundreds = ["", "One Hundred ", "Two Hundred ", "Three Hundred ", "Four Hundred ", "Five Hundred ", "Six Hundred ", "Seven Hundred ", "Eight Hundred ", "Nine Hundred "]
		word = word + hundreds[h]
				
		#------------ 99 - 20
		if hun_rem<100 && hun_rem>19

			tens = ["", "", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
			word = word + tens[t]

			one = ["", "-One", "-Two", "-Three", "-Four", "-Five", "-Six", "-Seven", "-Eight", "-Nine"]
			word = word + one[o]

		#------------ 19 - 11
		elsif  hun_rem<20 && hun_rem> 9
			if hun_rem == 10
				word = word + "Ten"
			else
				teens = ["", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
				word = word + teens[o]
			end

		#------------ 1 - 10
		else
			one = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
			word = word + one[o]
		end
	elsif n < 0
		puts "You have picked a negative number.  You needed to pick a number between 0 and 10,000 inclusive."
	else n > 10000
		puts "You have picked a number too large.  You needed to pick a number between 0 and 10,000 inclusive."
	end

#	puts word
	return word
end

=begin
puts ""
puts "Please enter a number between 0 and 10,000"
original_num = gets.chomp.to_i
n = original_num

num_to_word(n)
=end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
#  puts "Processing..."
  raise "Assertion failed!" unless yield 
  puts "True!"
end

assert {true}
assert { num_to_word(7) == "Seven" }
assert { num_to_word(48) == "Fourty-Eight" }
assert { num_to_word(543) == "Five Hundred Fourty-Three" }
assert { num_to_word(9832) == "Nine Thousand Eight Hundred Thirty-Two" }


# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

Intaking a number and utilizing integer division and modulo were very helpful to determine what the number in each column 
should be.  My first approached used IF/ELSIF/ELSE and had a ton of repetion.      

2)  What questions did you have while coding? What resources did you find to help you answer them?

I worked this one out without needing resources.  I did introduce a small logic error in the original division and modulo 
approach.  This error wasn't detected until I placed enough numbers in to find that I had, by my choice of variables and 
use of integer division and modulo, caused my program to not "see" 0-19.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

I liked using arrays and still want a better method.  I now have looked over the Chris Pine book and see an improvement, but 
not by the amount I would like.  Possibly "good enough is perfect." 

4)  Did you learn any new skills or tricks?

I now have a stronger conceptual understanding of integer division and % in slicing up numbers... hmmm, I wonder if using slice
might work.  My first thought is that it introduces more code than it is worth, but seems more elegant.      

5)  How confident are you with each of the Learning Competencies?

I am confident regarding the learning competencies.  I see how to use integer division and % to get the column values in a number.
I also see how to use this information and IF/ELSE to concatenate strings.  I also see a nicer program using arrays.      

6)  Which parts of the challenge did you enjoy?

Again, as always I like the puzzle/the need for logic.  I liked finding a shorter DRYer method.

7)  Which parts of the challenge did you find tedious?

I really enjoyed the challenge.  I did find it fun and tedious keeping track of all of the variables. 
        
=end






