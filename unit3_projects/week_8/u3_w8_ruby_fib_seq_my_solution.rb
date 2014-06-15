# U3.W8-9: 


# I worked on this challenge [by myself].

# Release 0: Run the Tests

# ----  Errors:
=begin
FF..

Failures:

  1) is_fibonacci? returns true when a integer is one number of the Fibonacci sequence
     Failure/Error: is_fibonacci?(random_fibonacci).should be_true
       expected: true value
            got: nil
     # ./fibonacci_spec.rb:9:in `block (2 levels) in <top (required)>'

  2) is_fibonacci? returns true with a large Fibonacci number
     Failure/Error: is_fibonacci?(8670007398507948658051921).should be_true
       expected: true value
            got: nil
     # ./fibonacci_spec.rb:12:in `block (2 levels) in <top (required)>'

Finished in 0.01349 seconds
4 examples, 2 failures

Failed examples:

rspec ./fibonacci_spec.rb:8 # is_fibonacci? returns true when a integer is one number of the Fibonacci sequence
rspec ./fibonacci_spec.rb:11 # is_fibonacci? returns true with a large Fibonacci number

# 	So, to start with nothing is really happening and everything is returning false.  However, since two of the tests are
looking for false this is why it believes that only two tests have failed out of 4 instead of all 4.

=end

#  Now:
=begin
true
.
true
.
false
.
false
.

Finished in 0.00253 seconds
4 examples, 0 failures
=end

# 2. Pseudocode

=begin
# 	Define is_fibonacci? as a method which accepts num as an argument
	#  	Assign fib_seq = [0,1]  (This gives a starter kit from which to design the rest of our Fibonacci Sequence from)
	#	Assign last the value num - 2  (This creates the correct iterations, since the first 2 elements already exist)
	# 		For loop num in 0..last
	#		Assign l = to  fib_seq.length  (This creates a way of adding the last to numbers in the array to get the next Fib term)
	#		fib_seq << fib_seq[l-2] + fib_seq[l-1]
	#  		End For loop

	#	Assign c = to num + 2 (For a reason I can not figure out yet, at this point in the program, the original 
									variable num has been reduced by 2.  I think it has to do with the num used in the 
									For Loop.  When I change the argument for the method from num to number, this goes
									away)
	#   Assign b = to the result of calling .include?(c) on fib_seq.
  	#  	Puts b
	#	Return fib_seq
# 	End method

# 	Call: is_fibonacci?(13)
=end

# 3. Initial Solution

=begin
def is_fibonacci?(num)
	fib_seq = [0,1]
	last = num - 2
	for num in 0..last
		l = fib_seq.length
		fib_seq << fib_seq[l-2] + fib_seq[l-1]
	end

	print fib_seq
	c = num + 2
	b = fib_seq.include?(c)
  	puts b

	return fib_seq
end

is_fibonacci?(13)

#NOTE: There is a problem with the above code when num is supplied as the arguement.  By the time it gets to the 
.include? method num is reduced by 2.  This is why I added the line c = num + 2 and then passed c to the .include?
method

=end

=begin
def is_fibonacci?(number)
    fib_seq = [0,1]
#    last = terms_possible_in_sequence - 2
  for num in 0..300
     l = fib_seq.length
     fib_seq << fib_seq[l-2] + fib_seq[l-1]
  end

#    print fib_seq
    puts
#  c = num + 2
  b = fib_seq.include?(number)
  puts b
  return b
end
=end

# 4. Refactored Solution

def is_fibonacci?(number)
    fib_seq = [0,1]
  for num in 0..125
     l = fib_seq.length
     fib_seq << fib_seq[l-2] + fib_seq[l-1]
  end
  b = fib_seq.include?(number)
  return b
end

=begin
is_fibonacci?(1, 10)
is_fibonacci?(13, 10)
is_fibonacci?(21, 15)
is_fibonacci?(234, 15)
is_fibonacci?(8670007398507948658051921, 125)
is_fibonacci?(927372692193078999171, 80)
=end

# 1. DRIVER TESTS GO BELOW THIS LINE


def assert
	raise "Assertion failed!" unless yield 
	puts "True!"
end



def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

=begin
describe "is_fibonacci?" do
   it "returns true when a integer is one number of the Fibonacci sequence" do
      is_fibonacci?(random_fibonacci).should be_true
   end
   it "returns true with a large Fibonacci number" do
      is_fibonacci?(8670007398507948658051921).should be_true
   end
   it "returns false when it's not in the Fibonacci seqence" do
      is_fibonacci?(random_fibonacci+100).should be_false
   end
   it "returns false on large non-Fibonacci numbers" do
      is_fibonacci?(927372692193078999171).should be_false
   end
end
=end


assert { is_fibonacci?(random_fibonacci) == true }
assert { is_fibonacci?(8670007398507948658051921) == true }
assert { is_fibonacci?(random_fibonacci+100) == false }
assert { is_fibonacci?(927372692193078999171) == false }



# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

I wanted to create the Fibonacci Sequence on the fly.  This is why I put the For Loop, instead of simply supplying myself
with a copy of the first x number of terms.  This did run into the problem that num is both an argument and utilized in 
the For Loop.  By the time num reached the calling of the method include?, its value had been reduced by 2.  This was easily
solved by adding 2 to num before it was passed in to the include? method or by changing is_fibonacci?'s argument name to something
other than num.

I found adding the last two elements of the array together to obtain Fibonacci's Sequence to be quite easy and fun, I felt 
special.

2)  What questions did you have while coding? What resources did you find to help you answer them?

Originally, to determine if a given number was a member of the Fibonacci Sequence, I thought of taking said number
and one by one subtracting terms of the Fibonaccie Sequence until this value reached zero, it is a Fib term, or this value 
became less than zero, it is not a Fib term.

Then include? popped into my brain.  This happened, because I thought, "wouldn't it be nice if I could just ask if it is 
one of the terms or not." 

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

 I liked using include? and shortening the code.     

4)  Did you learn any new skills or tricks?

This strengthened my understanding of code and also gave me a couple of DRYing up my code or atleast economizing on my
code.    

5)  How confident are you with each of the Learning Competencies?

I really enjoyed this challenge.  I am with my code.  I would like to add a second variable that allows the user to determine
the number of terms to be generated.  

6)  Which parts of the challenge did you enjoy?

Again, I really like the logic/puzzle solving aspect.  I like to see the relationship of items to other items.       

7)  Which parts of the challenge did you find tedious?

Trying to figure out why passing num in as an argument and having in the For Loop caused the before mentioned affect.
        
=end



