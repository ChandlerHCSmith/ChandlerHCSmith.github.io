# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself].

# Release 0. Test (RSPEC Results)

=begin
Chandlers-MacBook-Pro:3_guessing_game_solo_challenge ChandlerHCSmith$ RSPEC 3_die_spec.rb
.FFFFFFFFFFF

Failures:

  1) GuessingGame#guess is defined
     Failure/Error: GuessingGame.method_defined?(:guess).should be_true
       expected: true value
            got: false
     # ./3_die_spec.rb:14:in `block (3 levels) in <top (required)>'

  2) GuessingGame#guess expects a single argument
     Failure/Error: GuessingGame.instance_method(:guess).arity.should eq 1
     NameError:
       undefined method `guess' for class `GuessingGame'
     # ./3_die_spec.rb:18:in `instance_method'
     # ./3_die_spec.rb:18:in `block (3 levels) in <top (required)>'

  3) GuessingGame#guess returns :high when the guess is too high
     Failure/Error: game.guess(100).should eq :high
     NoMethodError:
       undefined method `guess' for #<GuessingGame:0x000001011ab178>
     # ./3_die_spec.rb:22:in `block (3 levels) in <top (required)>'

  4) GuessingGame#guess returns :low when the guess is too low
     Failure/Error: game.guess(0).should eq :low
     NoMethodError:
       undefined method `guess' for #<GuessingGame:0x000001011b20e0>
     # ./3_die_spec.rb:26:in `block (3 levels) in <top (required)>'

  5) GuessingGame#guess returns :correct when the guess is correct
     Failure/Error: game.guess(10).should eq :correct
     NoMethodError:
       undefined method `guess' for #<GuessingGame:0x000001011b1050>
     # ./3_die_spec.rb:30:in `block (3 levels) in <top (required)>'

  6) GuessingGame#guess changes solved? when a correct guess is made
     Failure/Error: expect {
     NoMethodError:
       undefined method `solved?' for #<GuessingGame:0x000001011afe80>
     # ./3_die_spec.rb:34:in `block (3 levels) in <top (required)>'

  7) GuessingGame#guess doesn't change solved? when an incorrect guess is made
     Failure/Error: expect {
     NoMethodError:
       undefined method `solved?' for #<GuessingGame:0x000001011a2488>
     # ./3_die_spec.rb:40:in `block (3 levels) in <top (required)>'

  8) GuessingGame#guess reflects the last guess
     Failure/Error: game.guess(10)
     NoMethodError:
       undefined method `guess' for #<GuessingGame:0x000001011a0d90>
     # ./3_die_spec.rb:47:in `block (3 levels) in <top (required)>'

  9) GuessingGame#solved? is defined
     Failure/Error: GuessingGame.method_defined?(:solved?).should be_true
       expected: true value
            got: false
     # ./3_die_spec.rb:57:in `block (3 levels) in <top (required)>'

  10) GuessingGame#solved? expects no arguments
     Failure/Error: GuessingGame.instance_method(:solved?).arity.should be_zero
     NameError:
       undefined method `solved?' for class `GuessingGame'
     # ./3_die_spec.rb:61:in `instance_method'
     # ./3_die_spec.rb:61:in `block (3 levels) in <top (required)>'

  11) GuessingGame#solved? returns false before a guess is made
     Failure/Error: game.should_not be_solved
     NoMethodError:
       undefined method `solved?' for #<GuessingGame:0x0000010119c678>
     # ./3_die_spec.rb:65:in `block (3 levels) in <top (required)>'

Finished in 0.03 seconds
12 examples, 11 failures

Failed examples:

rspec ./3_die_spec.rb:13 # GuessingGame#guess is defined
rspec ./3_die_spec.rb:17 # GuessingGame#guess expects a single argument
rspec ./3_die_spec.rb:21 # GuessingGame#guess returns :high when the guess is too high
rspec ./3_die_spec.rb:25 # GuessingGame#guess returns :low when the guess is too low
rspec ./3_die_spec.rb:29 # GuessingGame#guess returns :correct when the guess is correct
rspec ./3_die_spec.rb:33 # GuessingGame#guess changes solved? when a correct guess is made
rspec ./3_die_spec.rb:39 # GuessingGame#guess doesn't change solved? when an incorrect guess is made
rspec ./3_die_spec.rb:45 # GuessingGame#guess reflects the last guess
rspec ./3_die_spec.rb:56 # GuessingGame#solved? is defined
rspec ./3_die_spec.rb:60 # GuessingGame#solved? expects no arguments
rspec ./3_die_spec.rb:64 # GuessingGame#solved? returns false before a guess is made
Chandlers-MacBook-Pro:3_guessing_game_solo_challenge ChandlerHCSmith$ 
=end


#-----------------*******************-------------------------

# ----------After I fixed all of the failures ----------------

#    Finished in 0.01419 seconds
#    12 examples, 0 failures


# 1. DRIVER TESTS GO BELOW THIS LINE

puts GuessingGame.new(100).solved? == false
puts GuessingGame.new(100).guess(45) == :low
puts GuessingGame.new(100).solved? == false
puts GuessingGame.new(100).guess(145) == :high
puts GuessingGame.new(100).guess(100) == :correct

# 2. Pseudocode

# Input: 

#   Both initialize and guess accept only one argument and it needs to be an integer.

# Output:

#   Returns :high, :low, or :correct  (The code decides if the answer and the guess are the same.)
#   Returns true or false depending on whether the game has been solved.

# Steps:

#   Define a class named GuessingGame
    #   Define the initialize methodh that accepts answer as an the only argument
      #   Assign instance variable @answer = answer
    #   End method

    #   Define method guess that accepts only one argument, guess
      #   Define @guess = guess
        #   If @guess > answer
            # Return the value :high
        #  Elsif @guess == @answer
            # Return the value :correct
        #  Elsif @guess < @answer
            # Return the value :low
        # End If/Elsif
    #  End method guess
    
    #  Define method called solved? that does not accept any arguments
      #    If @guess != @answer
          #  Return the value false
      #   Elsif @guess == @answer
          #  Return the value true
      #  End If/Elsif
    # End method solved?
#   End Class GuessingGame

#   Create a game_1 that is a new member of the class and enters the answer of 100
#   Call solved? on this 

# 3. Initial Solution

class GuessingGame
  def initialize(answer)        # My initialization code
    @answer = answer
    puts @answer
    puts answer
  end
  
  def guess(guess)
    @guess = guess
    if @guess > @answer
      puts ":high"
      return :high
    elsif @guess == @answer
      puts ":correct"
      return :correct
    elsif @guess < @answer
      puts ":low"
      return :low
    end
  end
    
  def solved?
    if @guess != @answer
      puts false
      return false
    elsif @guess == @answer
      puts true
      return true
    end
  end
end



# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    elsif @guess < @answer
      return :low
    end
  end
    
  def solved?
    if @guess != @answer
      return false
    elsif @guess == @answer
      return true
    end
  end
end


game_1 = GuessingGame.new(100)

game_1.solved?

game_1.guess(45)
game_1.solved?

game_1.guess(145)
game_1.solved?

game_1.guess(100)
game_1.solved?


# 5. Reflection 
 
=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Overall it seemed straight forward and I had made a game similar to this in the past.  However, I built the entire class and methods and when
#         I didn't put guess as an instance variable in the guess method, it failed.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I am still not 100% sure why the instance is necessary in this case and not in the last to for some of the methods.  I know we want to create the 
#         instance variables so the "stay" with our new Object/Instance of the class.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Just want more clarity on the scope and variables.  I will do some reading and thinking.

4)  Did you learn any new skills or tricks?

#      I more practiced classes, initializing, methods, and instances that gained a new specifc trick.

5)  How confident are you with each of the Learning Competencies?

#       Very confident other than the question raised in 1)&2).  

6)  Which parts of the challenge did you enjoy?

#       Again, I liked the puzzle/logic.  I liked creating a guessing game, checking the answers and reporting out to the user.

7)  Which parts of the challenge did you find tedious?

#        Overall it was pretty straight forward.  The issue regarding instances and scope I know that I will clear up in the next couple of days.
=end
