# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].

# Release 0. Test (RSPEC Results)

=begin
Chandlers-MacBook-Pro:2_die ChandlerHCSmith$ RSPEC 2_die_spec.rb
.F.F.FF

Failures:

  1) Die#initialize raises an ArgumentError if list of labels is empty
     Failure/Error: expect {
       expected ArgumentError but nothing was raised
     # ./2_die_spec.rb:10:in `block (3 levels) in <top (required)>'

  2) Die#sides returns the number of sides given on initialization
     Failure/Error: die.sides.should eq length
       
       expected: 25
            got: nil
       
       (compared using ==)
     # ./2_die_spec.rb:26:in `block (3 levels) in <top (required)>'

  3) Die#roll returns a single letter if one label is passed in
     Failure/Error: Array.new(100) { die.roll }.should eq Array.new(100) { random_letter }
       
       expected: ["Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q", "Q"]
            got: [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
       
       (compared using ==)
       
       Diff:
       @@ -1,101 +1,101 @@
       -["Q",
       - "Q",
(This original showed an array made up of - "Q" as elements from line 39 to line 138.  I have deleted most of them for readablity.)
       - "Q",
       - "Q"]
       +[nil,
       + nil,
(This original showed an array made up of + nil as elements from line 139 to line 239.  I have deleted most of them for readablity.)
       + nil,
       + nil,
       + nil]
     # ./2_die_spec.rb:40:in `block (3 levels) in <top (required)>'

  4) Die#roll returns every possible letter for a sufficiently large number of rolls
     Failure/Error: output.sort.should eq possible_values.sort
       
       expected: ["A", "D", "E", "G", "H", "L", "M", "O", "P", "R", "S", "T", "V", "Y", "Z"]
            got: [nil]
       
       (compared using ==)
       
       Diff:
       @@ -1,2 +1,2 @@
       -["A", "D", "E", "G", "H", "L", "M", "O", "P", "R", "S", "T", "V", "Y", "Z"]
       +[nil]
     # ./2_die_spec.rb:50:in `block (3 levels) in <top (required)>'

Finished in 0.02512 seconds
7 examples, 4 failures

Failed examples:

rspec ./2_die_spec.rb:9 # Die#initialize raises an ArgumentError if list of labels is empty
rspec ./2_die_spec.rb:21 # Die#sides returns the number of sides given on initialization
rspec ./2_die_spec.rb:36 # Die#roll returns a single letter if one label is passed in
rspec ./2_die_spec.rb:43 # Die#roll returns every possible letter for a sufficiently large number of rolls
=end

# --------After I fixed all the failures----------------

#  Finished in 0.11911 seconds
#  7 examples, 0 failures

# 2. Pseudocode

# Input:

#   This builds on 1_die.
#     This class takes in an object called labels.  This object would be the labels on the sides of the object to be rolled.
#     Labels is an array comprised of Single-Letter Strings.

# Output:

#   The method sides returns the number of sides our modelled object has.
#   The method roll returns one of the Single-Letter Strings.

# Steps:

#   Define class Die
  # Define initialize that accepts the array labels
    # Create the instance varialbe labels and assign it the value of labels 
    # Create the instance variable number or sides and assign it the value of the length of the array labels.
    # Creat the instance variable number of sides less one and assign it the value of number of sides minus 1 (This will be used to iterate throught the array labels.)
    # IF to check if the array is empty, comparative []
      # raise ArguementError.new("You die has no sides")
    # end If

    # Define method sides
      # puts instance variable, number of sides
      # Returns instance variable, number of sides
    # end method sides
    
    # Define method roll
        #  If instance variable number of sides == 1
          #  Puts instance labels using a 0 index
          #  Return instance labels using a 0 index
       #  Else 
          # Assign the local variable Answer to the rand(0..instance number of sides less one)
          # Puts instance variable labels using index from the rand number generate above
          # Return instance variable labels using index from the rand number generate above
      # End IF/Else
    #  end method roll
    
#   end class Die


# 3. Initial Solution

class Die
  def initialize(labels)
      @labels = labels
      @num_sides = labels.length
      @num_sides_less_one = @num_sides - 1
    	if labels == []
        x = raise ArgumentError.new("You need to have labels so there can be fun and outcomes...")
      	raise ArgumentError.new("You need to have labels so there can be fun and outcomes...")
    	end
  end

  def sides
    puts @num_sides
    return @num_sides
  end

  def roll
    if @num_sides == 1
      puts @labels[0]
      return @labels[0]
    else
    ans = rand(0..@num_sides_less_one)
    puts @labels[ans]
    return @labels[ans]
    end
  end
end


d_1 = Die.new(["T"])
d_1.sides
d_1.roll


d_2 = Die.new(["T", "U", "V", "W", "X", "Y", "Z"])
d_2.sides
d_2.roll



d_3 = Die.new(["Watch out", "Chin up", "Rainy Days have to Happen", "Long-Life", "Smile, Today will be Good"])
d_3.sides
d_3.roll


# 4. Refactored Solution


class Die
  def initialize(labels)
      @labels = labels
      @num_sides = labels.length
      @num_sides_less_one = @num_sides - 1
    	if labels == []
      	raise ArgumentError.new("You need to have labels so there can be fun and outcomes...")
    	end
  end

  def sides
    return @num_sides
  end

  def roll
    if @num_sides == 1
      return @labels[0]
    else
    ans = rand(0..@num_sides_less_one)
    return @labels[ans]
    end
  end
end


d_1 = Die.new(["T"])
d_1.sides
d_1.roll


d_2 = Die.new(["T", "U", "V", "W", "X", "Y", "Z"])
d_2.sides
d_2.roll



d_3 = Die.new(["Watch out", "Chin up", "Rainy Days have to Happen", "Long-Life", "Smile, Today will be Good"])
d_3.sides
d_3.roll



# 1. DRIVER TESTS GO BELOW THIS LINE

puts Die.new(["T", "U", "V", "W", "X", "Y", "Z"]).sides == 7
puts Die.new(["Z"]).roll == "Z"
puts Die.new(["T", "U", "V", "W", "X", "Y", "Z"]).roll == "T" || "U" || "V" || "W" || "X" || "Y" || "Z"


# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Creating a class called Die, initilizing it and creating the various methods went smoothly.  This use of instance variables went well.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I was wondering how "raise ArgumentError.new" worked.  It would appear, by the way it functions and what happens when .new is removed, that raise ArguementError
#         is a built-in feature of RUBY.  I have looked for documentation to support my idea, but have so far been unsuccessful.
=end

#I did however find some cool code that looked very useful.  I like the style of setting variables all in one line
=begin
class Product
  attr_accessor :quantity, :type, :price, :imported

  def initialize(quantity, type, price, imported)
    raise ArgumentError.new "Type must be a string" unless type.is_a?(String)
    raise ArgumentError.new "Quantity must be greater than zero" if quantity.zero?
    raise ArgumentError.new "Price must be a float" unless price.is_a?(Float)

    @quantity, @type, @price, @imported = quantity, type, price.round(2), imported
  end
end


3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      There were a couple of times that I didn't pass an instance variable when I needed to, at first.

4)  Did you learn any new skills or tricks?

#      My understanding of instance variables and the scope of variables is clearer.

5)  How confident are you with each of the Learning Competencies?

#       There are certain parts that seem very easy.  Then there are the areas that involve instance variables, that I think make sense, but 
#           wonder where done the road will my current understanding be insufficient.

6)  Which parts of the challenge did you enjoy?

#       I enjoyed the class idea.  Before this challenge I made a class that was a dog capable of talking and adding numbers.  It was interactive.
#         The dog is based on a lab/beagle mix, Mr. T, that we use to have.  I tried to give him some personality and then the ability to ask you 
#         for numbers and add them.

7)  Which parts of the challenge did you find tedious?

#        I didn't find any of this tedious, however, I would like to be sure that I have a full understanding of instances.  I made another class where my
#         daughter and I could roll dice and play.  It was fun.
=end




