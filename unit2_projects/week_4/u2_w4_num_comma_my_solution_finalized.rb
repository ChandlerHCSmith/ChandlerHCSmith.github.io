# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].


#-------------------Release 0a Write Driver Test Code-----------------------------------

# Look at line 54

def separate_comma(array)
  l = array.length - 1
  
  for num in 0..l
    
    if array[num] < 1000
      puts array[num]
    elsif array [num] >= 1000 && array[num] < 1000000
      # ------ hundreds

      hundreds = array[num]%1000

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      thousands = b%1000
      
      puts thousands.to_s + "," + hundreds.to_s
      
    elsif array[num] >= 1000000 && array[num] < 1000000000

      # ------ hundreds

      hundreds = array[num]%1000

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      thousands = b%1000

      # ------ millions

      c = b - thousands
      c = b/1000
      millions = c

      y = millions.to_s + "," + thousands.to_s + "," + hundreds.to_s
      puts y
      puts y == "888,777,555"
    end 
  end
end

separate_comma([888777555])

#-------------------Release 0b Run the Tests-------------------------------------------
=begin
888,777,555
true
=end

#-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

# What is the input?

#  The input is an Array composed of integers.

# What is the output? (i.e. What should the code return?)

#  The output needed to be integers as strings with commas every 3 decimal places for integer numbers larger than 999.

# What are the steps needed to solve the problem?

#PSEUDOCODE

# Define method separate_comma that accepts a single parameter of array
  # Assign l the value of array.length - 1     (To be used to iterate through the array)
  # Utilize a for loop to move through each value of the array.
  # Create If/Elsif Control Flow for the following three situations:
    # If the array value is less than 1000
      # puts array value
    # Elsif the array value is between 1,000,000 and 1,000
      # Use modulo with a value of 1000 to obtain remainder (This will produce the hurdreds, tens, and one's numbers)
      # Assign the string-converted form of this remainder to a variable named Hundreds
      # Assign Thousands the value of array value - remainder
      # Assign Thousands the value of Thousands divided by 1000 (This gives us the number of thousands)
      # Convert Thousands to a String
      # Concatenate Thousands with "," and Hundreds
      # Puts this String, which now is the array value with a comma after 3 decimals
    # Elsif the array value is between 1,000,000,000 and 1,000,000
      # Use modulo with a value of 1000 to obtain remainder (This will be produce the hurdreds, tens, and ones numbers)
      # Assign the string-converted form of this remainder to a variable named Hundreds
      # Assign a variable* the value of array[num] - hundreds(non converted form)
      # Take this variable and divide by 1000 (*This eliminates the 3 zeros associated with the hundred, ten, and one's place)
      # Use modulo with a value of 1000 to obtain remainder (This now produces the 3 decimals associated with the thousands)
      # Assign the string-converted form of this remainder to a variable named Thousands
      # Assign Millions the value of variable * - thousand(non converted form)
      # Take Millions and divide by 1000 (This now produces the 3 decimals associated with the millions)
      # Assign the string-converted form of this fraction to a variable named Millions
      # Concatenate Millions with "," with Thousands with "'" Hundreds 
      # Puts this String, which now is the array value with a comma after/between every 3 decimals starting from the right.


# Call method separate_comma passing in an array that is composed of intergers ranging from 0 to the hundreds of millions.


#-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

#-------------------Initial Testing of Ideas--------------------------------------------
a = 578329777
puts a 


# ------ hundreds

hundreds = a%1000
puts hundreds

# ------ thousands

b = a - hundreds
b = b/1000
puts b

 thousands = b%1000

puts thousands

# ------ millions

c = b - thousands
puts c
c = b/1000
puts c

millions = c

puts millions
puts

puts millions.to_s + "," + thousands.to_s + "," + hundreds.to_s

#------------------------Initial Solutions--------------------------------------------

def separate_comma(array)
  l = array.length - 1
  
  for num in 0..l
    
    if array[num] < 1000
      puts array[num]
    elsif array [num] >= 1000 && array[num] < 1000000
      # ------ hundreds

      hundreds = array[num]%1000
      puts hundreds

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      puts b
      
      thousands = b%1000

      puts thousands
      
      puts thousands.to_s + "," + hundreds.to_s
      
    elsif array[num] >= 1000000 && array[num] < 1000000000

      # ------ hundreds

      hundreds = array[num]%1000
      puts hundreds

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      puts b

      thousands = b%1000

      puts thousands

      # ------ millions

      c = b - thousands
      puts c
      c = b/1000
      puts c

      millions = c

      puts millions
      puts

      puts millions.to_s + "," + thousands.to_s + "," + hundreds.to_s
    end 
  end
end

separate_comma([0, 15, 150, 1500, 12345, 345899, 4567834, 69876433, 888777555])



#-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution

def separate_comma(array)
  l = array.length - 1
  
  for num in 0..l
    
    if array[num] < 1000
      puts array[num]
    elsif array [num] >= 1000 && array[num] < 1000000
      # ------ hundreds

      hundreds = array[num]%1000

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      thousands = b%1000
      
      puts thousands.to_s + "," + hundreds.to_s
      
    elsif array[num] >= 1000000 && array[num] < 1000000000

      # ------ hundreds

      hundreds = array[num]%1000

      # ------ thousands

      b = array[num] - hundreds
      b = b/1000
      thousands = b%1000

      # ------ millions

      c = b - thousands
      c = b/1000
      millions = c

      puts millions.to_s + "," + thousands.to_s + "," + hundreds.to_s
    end 
  end
end

separate_comma([0, 15, 150, 1500, 12345, 345899, 4567834, 69876433, 888777555])

#-------------------Release 4 My Reflections-------------------------------------------
# 4. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      I quickly thought of using modulo to obtain remainders and then converting them to strings and concatenating
#         them with each other and a comma between.
#      I fought with myself for a little while over the correct logic flow - just simply the order.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Again, the code came pretty quickly.  I think that both Code Academy and Treehouse use modulo as a way to isolate a 
#         portions of a number.  I had done these exercises months ago.  I guess they were still in my brain.
#      One question I had while coding, was how to extend this to any number, without simply adding more IF/Elsif statements?
#         I didn't find anyting to help on this for now.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      This came pretty easily.  The psuedocode is becoming easier and I think the example from the DBC site has started
#         to take root.

4)  Did you learn any new skills or tricks?

#      More than anything I practiced and refined some older skills - this was fun!

5)  How confident are you with each of the Learning Competencies?

#      I am fairly confident.   

6)  Which parts of the challenge did you enjoy?

#       Again, I really enjoyed the puzzle/logic aspect of this challenge.  I like taking the numbers apart and then
#         putting them back together.

7)  Which parts of the challenge did you find tedious?

#       None on this challenge.  I quite enjoyed it!
