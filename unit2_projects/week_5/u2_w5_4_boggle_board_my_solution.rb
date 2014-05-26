# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode  (This one was already given.)

	#   Define a method called create_word that accepts two parameters: board and *multiple coordinates.
			#Use map with the coordinates to extract all of the letters and then .join to put these letters together as a word.
	#   end definition of method

	#   Call method passing it the boggle_board and specific array coordinates.  This will produce words.

# Initial Solution

def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# Refactored Solution -----  (It doesn't get much better than this!)

def create_word_1(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

puts create_word_1(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word_1(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# DRIVER TESTS GO BELOW THIS LINE

puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"

# Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      I first made my own version of the game using class BoogleBoard and had it designed with an initilize method,
# 			a print out rows methods.  I stopped work on this seeing that this assingment seemed to be more focused on 
#  			individual methods that classes.
#  		NA

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      I understand coordinates, we have used .map before, however I know that I have rusty spots in this area.  Actually
#   		how does the method see each peice in conjunction with the others?

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      It seems to make sense overall, I would just like a deeper understanding.

4)  Did you learn any new skills or tricks?

#      I really like the map used with coordinates in an array.

5)  How confident are you with each of the Learning Competencies?

#      It makes sense, I would like to have some more practice.

6)  Which parts of the challenge did you enjoy?

#       I really like the map used with coordinates.

7)  Which parts of the challenge did you find tedious?

#  		None
=end


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

	#  Define a method print_out_row which accepts two arguements: board(the boggle board array) and the row number
		# 	Create and empty array named row_array to hold elements for the specified row (not needed.)
		#   Set l = to row choosen(number) minus one to account for the index beginning of 0 not 1.
		# 	Set choosen_row variable = to board[l]  # This is the choosen row's elements.
		# 	Print choosen_row to double check # Used only in the development phase.
		# 	Return choosen_row
	#  end method

	#  Call the method while passing in boggle_board and the row of interest.

# Initial Solution

	def print_out_row_v1(board, number)

		row_array = []

		l = number - 1

		choosen_row = board[l]
		print choosen_row
		puts
		return choosen_row
	end 

	puts "What row would you like printed out?  Remember, the boggle board only has 4 rows and 4 columns."
	number = gets.chomp.to_i
		if number >0 && number < 5
			print_out_row_v1(boggle_board, number)
		else
		puts "You have choosen a number that does not correspond to the number of rows in this boggle board."
		puts "I look forward to playing with you in the future."
		puts "Goodbye...  :("
		end


# Refactored Solution

	def print_out_row_v2(board, number)
		l = number - 1
		return board[l]
	end 


# DRIVER TESTS GO BELOW THIS LINE

	puts print_out_row_v2(boggle_board, 2) == ["i", "o", "d", "t"]

# Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Creating the method, which accepted the correct arguements was quite easy.  

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      This challenge seemed quite easy, however, I had played around which multi-dimensional arrays and accessing information
#  			in the past.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      None on this one.

4)  Did you learn any new skills or tricks?

#      Not giant new skills or tricks, however I am seeing ever more clearly that many steps are unnecessary.

5)  How confident are you with each of the Learning Competencies?

#       I feel good about this challenge.

6)  Which parts of the challenge did you enjoy?

#       I really liked accessing the information and look forward to the next challenge where we access a column.

7)  Which parts of the challenge did you find tedious?

#        None.  I enjoyed this challange and find that my driver tests are improving.
=end


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

	# Define print_out_column method that accepts two arguments: board(the boogle board array) and column number
		#  Create an empty array to hold the column elements
		#  Assign num_of_row to the length of the board - 1 to account for starting at zero in our counter
		#  Assign columns = number passed - 1 to account for starting at zero in arrays.
		#  For loop running from 0 to num_of_row inclusively to iterate over all the boggle board elements.
			#  Set variable row_array equal to each boggle array element (Each boggle array element is in turn an array.)
			#  use column_num_choosen substituted into row_array to produce each column element.  Push these to the column array.
		#  End For Loop
		#  Return column array.
	#  End method

	#  Call print_out_column passing it the boggle_board and the desired column number. 

# Initial Solution

	def print_out_column_v1(board, number)

		column_array = []

		num_of_rows = board.length - 1
		column_num_choosen = number - 1

		for num in (0..num_of_rows)
			row_array = board[num]
			column_array << row_array[column_num_choosen]
		end
		print column_array
		return column_array
	end 

	puts
	print_out_column_v1(boggle_board, 2)


# Refactored Solution

	def print_out_column_v2(board, number)
		column_array = []
		num_of_rows = board.length - 1
		column_num_choosen = number - 1
		for num in (0..num_of_rows)
			row_array = board[num]
			column_array << row_array[column_num_choosen]
		end
		return column_array
	end 

	puts
	print_out_column_v2(boggle_board, 2)


# This also works.  It uses .map and coordinates that change.:

	def pick_a_column(board, *coords)
		column_array = []
    	column_array << coords.map { |coord| board[coord.first][coord.last]}
	end
puts "***"
puts 
col = 2
b =col - 1
print pick_a_column(boggle_board, [0,b], [1,b], [2,b], [3,b])
puts 
puts "***"	
puts 

# DRIVER TESTS GO BELOW THIS LINE

	puts print_out_column_v2(boggle_board, 2) == ["r", "o", "c", "a"]

# Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Iterating through each row, then selecting the element that corresponds to the column position, and pushing this 
#  			information to an array to be printed or checked worked well.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      My method seemed to be economic and clean.  Then I experimented with the coords.map method given in the beginning.
#  			Really cool.  I still want to know more.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I really didn't have troubles in this one.  I was able to iterate through the array an select portions pretty
#  			easily.  I did enjoy using the coords.map methods.

4)  Did you learn any new skills or tricks?

#      I looked how the coords.map enumerable helped so much in processing the data.

5)  How confident are you with each of the Learning Competencies?

#       I am very confident about this information and techniques.  I would like to know more.

6)  Which parts of the challenge did you enjoy?

#       Again, I really like the puzzle/logic.  This time I really enjoyed coords.map.

7)  Which parts of the challenge did you find tedious?

#       I did not find any part of this challenge particularly tedious.  More fun. 
=end


