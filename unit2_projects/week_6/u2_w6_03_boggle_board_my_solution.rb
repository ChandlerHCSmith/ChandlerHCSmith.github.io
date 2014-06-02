# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself].


# 2. Pseudocode

# establish class BoggleBoard

	# Define initialize which accepts one argument, dice_grid
		# Define an instance of dice_grid set equal to dice_grid
	# End initialize method

	# Define method print_board
		# for num in 0..3
			# print @dice_grid[num]
		# end for
	# End method

	# Define method create_word which accepts multiple coordinates (*coords)
		# call map on coords { |coord| @dice_grid[coord.first][coord.last]} call join("") on this to create "words."
	# End method 

	# Define method get_row which accepts an argument number
		# Assign l the value of number - 1 (This accounts for indices starting at 0.)
		# Return @dice_grid[l]
	# End method

	# Define method get_column which accepts an arguemnt number
		# Create an empty array
		# Assign num_of_rows = to @dice_grid.length -1
		# Assign column_num_choosen = number - 1 (This accounts for indices starting at 0.)
		# for num in (0..num_of_rows) (This will iterate over the overall array allowing us to access each element array one at a time.)
			# row_array = @dice_grid[num]  (Now we have each row one by one.)
			# push row_array[column_num_choosen] to column_array
		# End for
		# Return column_array
	# End method
# End class

# Assign dice_grid = to the array given

# Establish a new instance of the class BoggleBoard by assigning boggle_board to BoggleBoard.new(dice_grid)

# Method 0
# Call print_board on boggle_board

# Method 1
# puts the result of calling create_word using various combinations of coordinates

# Method 2

# puts "Message: Here is the second row:"
# print boggle_board.get_row(2)
# puts "Message for the user to select a row."
# Assign row = to gets.chomp.to_i
# print boggle_board.get_row(row)
 
# Method 3
# puts "Message: Here is the second column:"
# print boggle_board.get_column(2)
# puts "Message for the user to select a column."
# Assign col = to gets.chomp.to_i
# print boggle_board.get_column(col)

# Accessing an Individual Letter

# puts "Here is an individual letter:"
# puts boggle_board.create_word([3,2])



# 3. Initial Solution
=begin

class BoggleBoard

	def initialize(dice_grid)
		@dice_grid = dice_grid
		print @dice_grid
		puts
		print dice_grid
		puts
	end

# Method 0 (Prints the Boggle Board)

	def print_board
		puts "Here is the new BoogleBoard:"
			for num in 0..3
				print @dice_grid[num]
				puts
			end
		puts
	end
 
# Method 1 (Access multiple elements of a nested array)

	def create_word(*coords)
	    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
	end

# Method 2  (Takes a row number and returns all the elements in the row.)

	def get_row(number)
		l = number - 1
		return @dice_grid[l]
	end 

# Method 3 (Takes a column number and returns all the elements in the column.)

	def get_column(number)
		column_array = []
		num_of_rows = @dice_grid.length - 1
		column_num_choosen = number - 1
		for num in (0..num_of_rows)
			row_array = @dice_grid[num]
			column_array << row_array[column_num_choosen]
		end
		return column_array
	end 
 

end
 
# -------------------------------------------------------------------------------------


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# Method 0
puts
boggle_board.print_board
puts

# Method 1

puts "Here are some words that you can create from this boggle_board:"
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts boggle_board.create_word([0,1], [0,2], [1,2])  #=> creates what california slang word?
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])  # => creates dock
puts

# Method 2
puts 
puts "Here is the second row:"
print boggle_board.get_row(2)
puts
puts 
puts "What row would you like? (1, 2, 3, or 4)"
row = gets.chomp.to_i
print boggle_board.get_row(row)
puts
puts
 
# Method 3
puts "Here is the second column:"
print boggle_board.get_column(2)
puts
puts
puts "What column would you like? (1, 2, 3, or 4)"
col = gets.chomp.to_i
print boggle_board.get_column(col)
puts
puts

# Accessing an Individual Letter

puts "Here is an individual letter:"
puts boggle_board.create_word([3,2])
=end

# 4. Refactored Solution  (Mostly refactored already, because the code comes form the refactored code of last week's assignment.)

class BoggleBoard

	def initialize(dice_grid)
		@dice_grid = dice_grid
	end

# Method 0 (Prints the Boggle Board)

	def print_board
		puts "Here is the new BoogleBoard:"
			for num in 0..3
				print @dice_grid[num]
				puts
			end
		puts
	end
 
# Method 1 (Access multiple elements of a nested array)

	def create_word(*coords)
	    coords.map { |coord| @dice_grid[coord.first][coord.last]}.join("")
	end

# Method 2  (Takes a row number and returns all the elements in the row.)

	def get_row(number)
		l = number - 1
		return @dice_grid[l]
	end 

# Method 3 (Takes a column number and returns all the elements in the column.)

	def get_column(number)
		column_array = []
		num_of_rows = @dice_grid.length - 1
		column_num_choosen = number - 1
		for num in (0..num_of_rows)
			row_array = @dice_grid[num]
			column_array << row_array[column_num_choosen]
		end
		return column_array
	end 
 

end
 
# -------------------------------------------------------------------------------------


dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# Method 0
puts
boggle_board.print_board
puts

# Method 1

puts "Here are some words that you can create from this boggle_board:"
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts boggle_board.create_word([0,1], [0,2], [1,2])  #=> creates what california slang word?
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2])  # => creates dock
puts

# Method 2
puts 
puts "Here is the second row:"
print boggle_board.get_row(2)
puts
puts 
puts "What row would you like? (1, 2, 3, or 4)"
row = gets.chomp.to_i
print boggle_board.get_row(row)
puts
puts
 
# Method 3
puts "Here is the second column:"
print boggle_board.get_column(2)
puts
puts
puts "What column would you like? (1, 2, 3, or 4)"
col = gets.chomp.to_i
print boggle_board.get_column(col)
puts
puts

# Accessing an Individual Letter

puts "Here is an individual letter:"
puts boggle_board.create_word([3,2])




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:

# Method 1

puts
puts "Here are the test results for create_word:"
puts boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code" 
puts boggle_board.create_word([0,1], [0,2], [1,2]) == "rad"
puts boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
puts

# Method 2

puts "Here are the test result for get_row:"
puts boggle_board.get_row(2) == ["i", "o", "d", "t"]
puts 
puts "Testing my choice of row:"
	if row == 1
		puts boggle_board.get_row(1) == ["b", "r", "a", "e"]
	elsif row == 2
		puts boggle_board.get_row(2) == ["i", "o", "d", "t"]
	elsif row == 3
		puts boggle_board.get_row(3) == ["e", "c", "l", "r"]
	elsif row == 4
		puts boggle_board.get_row(4) == ["t", "a", "k", "e"]
	end
puts


# Method 3

puts "Here are the test result for get_column:"
puts boggle_board.get_column(2) == ["r", "o", "c", "a"]
puts 
puts "Testing my choice of column:"
	if row == 1
		puts boggle_board.get_column(1) == ["b", "i", "e", "t"]
	elsif row == 2
		puts boggle_board.get_column(2) == ["r", "o", "c", "a"]
	elsif row == 3
		puts boggle_board.get_column(3) == ["a", "d", "l", "k"]
	elsif row == 4
		puts boggle_board.get_column(4) == ["e", "t", "r", "e"]
	end
puts

#  -----  Accessing Individual letters from the board

puts "Here is the test result for Accessing and Individual Letter:"
puts boggle_board.create_word([3,2]) == "k"




# 4. Reflection 

=begin
You just made a transition from procedural programming to object-oriented programming! 
a)	How is the implementation different? 

	The code before was linear and only linear.  You wrote code to be read from top to bottom.  Now a class is designed with
		certain capabilities.  After writing this code, you create "members" of this class and then uses the capabilities as
		needed.


b)	What are the benefits to using the Object Oriented approach 
	(even if it is a bit more code?)

	Code can be used over and over again.  However, this is not all.  The actual layout of the code and mental structure creates
		a population of Objects that seem to live and breath.  I like the structure, it seems to lends itself to nice 
		organizing.  I really like how we are creating Objects that seem to behavior more the way really object do.


How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

    Using dice_grid as an instance and therefore shared with all the methods inside BoggleBoard.  Using my original
		from the other day and only modifying variable names.

2)  What questions did you have while coding? What resources did you find to help you answer them?

	Most of the work that I did simply worked.  There was one time at the very beginning that I created a method print and
		I kept recieving a I continued to recieve and error 0 for 1 argument and then when I added and argument to the method
		I recieved 1 for 0 arguments.  I looked over other work that I had done and a few websites and finally concluded
		that I had defined the instance of @dice_grid correctly in initialize, but was not passing it to the print method. 	

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

    Most of the ideas for this exercise seemed to fit together.  My Driver Test Code worked nicely.

4)  Did you learn any new skills or tricks?

    No new tricks, simply my understanding in all areas strengthened.

5)  How confident are you with each of the Learning Competencies?

    I am pretty confident.  I still question the 1 for 0 agrument and 0 for 1 argument and wish I had the code that created
		these errors so I could study it now, after the exercise and better understand how all the variables work together. 

6)  Which parts of the challenge did you enjoy?

    I simply thought it was fun.  I enjoyed all of the parts of this exercise.  I want to create an accurate boggle board.  I want to 
      research the actual dice used and the letters per side per location and create a board that can be shuffled/mixed to more accurately simulate
      a true board.

7)  Which parts of the challenge did you find tedious?

    I found the pseudocoding to be a bit tedious since I had already done it in the previous exercise.  However,
		I  wrote all of the code again, knowing that this will make me better at coding. 
=end




