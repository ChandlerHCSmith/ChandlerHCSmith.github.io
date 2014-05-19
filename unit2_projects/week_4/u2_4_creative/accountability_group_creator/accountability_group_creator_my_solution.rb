# U2.W4: Accounability Group Creator!

# I worked on this challenge [by myself].

#-------------------Release 0 Run the Tests-------------------------------------------

#Test Code that would work for the first run through of San Francisco:

#puts group_1 == ["Alex White", "Ernie Salazar", "Gannon Curran", "Patrick Reynolds"]
#puts group_2 == ["Chandler Smith", "Ariel Fogel", "Lauren Kroner", "Arik Gadye"] 
#puts group_3 == ["Premila Anand", "Morgan O'Leary", "John Akers", "Matthew Darin"] 
#puts group_4 == ["Puru Dahal", "Hethe Berg", "Steven Leu", "Albert Alquisola"]
#puts group_5 == ["Tony Leung", "Brian Paak", "Allison Reilly", "Michele Murphy"]
#puts group_6 == ["Brian Junio", "Jared K. Chevalier", "Justin Harnoss"]
#puts group_7 == []

# could also use:

#puts group_1.is_a?(Array)
#puts group_2.is_a?(Array)
#puts group_3.is_a?(Array)
#puts group_4.is_a?(Array)
#puts group_5.is_a?(Array)
#puts group_6.is_a?(Array)
#puts group_7.is_a?(Array)


#* This code should be place inside the Method before the end.
#**  I do not know how to work test code that tests all of my data and the shuffled arrays.  What resource would be helpful?
#  My test code is also inside my code and this troubles me.  The difficulty also could be occuring because I called the method more than once with 
#     more than one set of data.  I know it can be done, I just don't know how.

=begin 

=end


#-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

# What is the input?

#  	An Array of Strings.

# What is the output? (i.e. What should the code return?)

# 	3 Sets of As many groups as necessary to create groups with 4 members.

# What are the steps needed to solve the problem?

=begin

#PSEUDOCODE


# Define method a_g_c that accepts an Array of Strings (Our Names.)
  #  Set l equal to the array length - 1  (This produces a number to use for the elements in the array)

  #  Create 7 empty arrays
  # Iterate through the input array usng a for loop num in 0 to l

    # Create If/Elsif Control Flow that moves in increments of 4 until element number is reached
        #push array[num] to the appropriate empty array, one at a time, until l is reached
        # *(Create enough If/Elsif's to accommodate all of the data.)
        # *(I am trying to devise a method that would create the appropriate number groups based on the number of 
              elements in the array.  What I have is a bit contrieved and not as sophisticated as I would like.)

    #  Call the method a_g_c for the first list of names from one of the locations.  This will create a list of Accountability Groups for Unit 1
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 2
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 3

    #  Call the method a_g_c for the second list of names from the next location.  This will create a list of Accountability Groups for Unit 1
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 2
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 3

    #  Call the method a_g_c for the third list of names from the last location.  This will create a list of Accountability Groups for Unit 1
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 2
    #  Shuffle with a bang the list and repeat to create a new list of Accountability Groups for Unit 3

=end




#-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

def a_g_c(array)
  l = array.length - 1

  group_1 = []
  group_2 = []
  group_3 = []
  group_4 = []
  group_5 = []
  group_6 = []

  for num in 0..l
    if num >=0 && num <=3
      group_1.push(array[num])
    elsif num > 3 && num <= 7
      group_2.push(array[num])
    elsif num > 7 && num <= 11
      group_3.push(array[num])
    elsif num > 11 && num <= 15
      group_4.push(array[num])
    elsif num > 15 && num <= 19
      group_5.push(array[num])
    elsif num > 19 && num <= 23
      group_6.push(array[num])
    end
  end 
  puts
  puts
  puts "Group 1"
  print group_1
  puts
  puts
  puts "Group 2"
  print group_2
  puts
  puts
  puts "Group 3"
  print group_3
  puts
  puts
  puts "Group 4"
  print group_4
  puts
  puts  
  puts "Group 5"
  print group_5
  puts
  puts
  puts "Group 6"
  print group_6
  puts
  puts
end

san_francisco_purple_martins = ["Alex White", "Ernie Salazar", "Gannon Curran", "Patrick Reynolds", 
  "Chandler Smith", "Ariel Fogel", "Lauren Kroner", "Arik Gadye", "Premila Anand", "Morgan O'Leary", 
  "John Akers", "Matthew Darin", "Puru Dahal", "Hethe Berg", "Steven Leu", "Albert Alquisola", "Tony Leung", 
  "Brian Paak", "Allison Reilly", "Michele Murphy", "Brian Junio", "Jared K. Chevalier", "Justin Harnoss"]

puts
puts "--------- *** San Francisco Purple Martins *** ---------"
puts "Accountability Groups for Unit 1:"
puts
a_g_c(san_francisco_purple_martins)
puts

san_francisco_purple_martins = san_francisco_purple_martins.shuffle!


puts "Accountability Groups for Unit 2:"
a_g_c(san_francisco_purple_martins)
puts

san_francisco_purple_martins = san_francisco_purple_martins.shuffle!

puts "Accountability Groups for Unit 3:"
a_g_c(san_francisco_purple_martins)
puts



#-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution

#  Now to include all three locations.
#  Also to create some clarity in how it is display in Terminal

def a_g_c(array)
  l = array.length - 1

  group_1 = []
  group_2 = []
  group_3 = []
  group_4 = []
  group_5 = []
  group_6 = []
  group_7 = []  # Groups 2 & 3 both needed 7 groups

  for num in 0..l
    if num >=0 && num <=3
      group_1.push(array[num])
    elsif num > 3 && num <= 7
      group_2.push(array[num])
    elsif num > 7 && num <= 11
      group_3.push(array[num])
    elsif num > 11 && num <= 15
      group_4.push(array[num])
    elsif num > 15 && num <= 19
      group_5.push(array[num])
    elsif num > 19 && num <= 23
      group_6.push(array[num])
    elsif num > 23 && num <= l  # Groups 2 & 3 both needed 7 groups
      group_7.push(array[num])
    end
  end 
  puts
  puts
  puts "Group 1"
  print group_1
  puts
  puts
  puts "Group 2"
  print group_2
  puts
  puts
  puts "Group 3"
  print group_3
  puts
  puts
  puts "Group 4"
  print group_4
  puts
  puts  
  puts "Group 5"
  print group_5
  puts
  puts
  puts "Group 6"
  print group_6
  puts
  puts
  puts "Group 7"
  print group_7
  puts
  puts
            
end

san_francisco_purple_martins = ["Alex White", "Ernie Salazar", "Gannon Curran", "Patrick Reynolds", 
  "Chandler Smith", "Ariel Fogel", "Lauren Kroner", "Arik Gadye", "Premila Anand", "Morgan O'Leary", 
  "John Akers", "Matthew Darin", "Puru Dahal", "Hethe Berg", "Steven Leu", "Albert Alquisola", "Tony Leung", 
  "Brian Paak", "Allison Reilly", "Michele Murphy", "Brian Junio", "Jared K. Chevalier", "Justin Harnoss"]

puts
puts "--------- *** San Francisco Purple Martins *** ---------"
puts
puts "Accountability Groups for Unit 1:"
puts
a_g_c(san_francisco_purple_martins)
puts

san_francisco_purple_martins = san_francisco_purple_martins.shuffle!


puts "Accountability Groups for Unit 2:"
puts
a_g_c(san_francisco_purple_martins)
puts

san_francisco_purple_martins = san_francisco_purple_martins.shuffle!

puts "Accountability Groups for Unit 3:"
puts
a_g_c(san_francisco_purple_martins)
puts

new_york_red_spotted_newts = ["Rootul Patel", "Hilary Barr", "Alan Florendo", "Cassie Moy", "Stephen Craig Estrada", 
  "Austin Hay", "Anthony Edwards Jr.", "John Berry", "Farheen Malik", "Daniel Deepak", "RJ Arena", "Justin Lee", 
  "Michael Weiss", "David Sin", "Julius Jung", "Fahia Mohamed", "Molly Huerste", "Eric Hou", "Avi Fox-Rosen", 
  "Joel Yawili", "Dylan Richards", "Kaitlyn La", "Derek Siker", "Dylan Krause"]

puts
puts "--------- *** New York Red Spotted Newts *** ---------"
puts
puts "Accountability Groups for Unit 1:"
puts
a_g_c(new_york_red_spotted_newts)
puts

new_york_red_spotted_newts = new_york_red_spotted_newts.shuffle!


puts "Accountability Groups for Unit 2:"
puts
a_g_c(new_york_red_spotted_newts)
puts

new_york_red_spotted_newts = new_york_red_spotted_newts.shuffle!

puts "Accountability Groups for Unit 3:"
puts
a_g_c(new_york_red_spotted_newts)
puts

chicago_salamanders = ["Quy Tran", "Ravi Patel", "Isaac Keith", "Max Diener", "Samuel Clements", "Francisco Scala", 
  "Ann Lin", "Maddison Brusman", "James Miller", "Ryan Spencer", "Ismail Kalimi", "Steve Loar", "Joseph Webb", 
  "Darrell Jones", "James R Walker", "Sara Chen",  "Praniti Sinha", "Andrew Adams", "Tanner Blumer", "Jonathan Young", 
  "David Hwang", "Spencer Zhang", "Jeremy Wong", "Angela Kosek", "Adrian Tawadros", "Marek Pyczkowski"]

puts
puts "--------- *** Chicago Salamanders *** ---------"
puts
puts "Accountability Groups for Unit 1:"
puts
a_g_c(chicago_salamanders)
puts

chicago_salamanders = chicago_salamanders.shuffle!


puts "Accountability Groups for Unit 2:"
puts
a_g_c(chicago_salamanders)
puts

chicago_salamanders = chicago_salamanders.shuffle!

puts "Accountability Groups for Unit 3:"
puts
a_g_c(chicago_salamanders)
puts

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

#      My original idea came to me quickly as only that an idea, a feeling while driving to work.
#      Once a had some personal time at work I created a very simple program using a array of letters.
#      I knew that I needed to go through all of the letters, so I used a for loop to go through all of the elements in the array.
#      I then used an IF/Elsif Control Flow and boolean logic to move by increments of 4
#      During each If/Elsif the name was moved to a group array to be printed out latter.
#      I did have to figure out a wat to both move through the array and keep only 4 members and then move on.
#      I also needed a method to randomize the names.  With 20 so names shuffle will do a great job of insuring that we won't get any repeats.
#      (* The odds of getting a repeat of 4 names out of 20 something taken at random(this is essentially what shuffle insures), is very small.)

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      How do I move throught the array and at the same time insure groups of 4?  For this just a little thinking was necessary.
#      The shuffle idea I believe came from Tony Leung through an email chain.  Thanks Tony and Gannon.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I was able to figure out a beginner approach to this challenge.  
#      What I really want is to be able to read the arrays length and make the appropriate number of groups based on this information.
#      As it is, if my data sets exceeded 28, my program would fail.

4)  Did you learn any new skills or tricks?

#      The use of shuffle as a randomizer was nice.   

5)  How confident are you with each of the Learning Competencies?

#       I feel very confident about by approach.
#       Again, pseudocode makes more sense, but still I am unsure.
#       Testing is very new.

6)  Which parts of the challenge did you enjoy?

#       Again, I really liked trying to figure out the puzzle.  

7)  Which parts of the challenge did you find tedious?

#       I did not find this challenge tedious.  The TTD is new and the pseudocoding is improving.

8)  Are there built-in methods to do this in Ruby?

#   It looks as though slice_each may be beneficial.
#   It also looks as though each_cons(n), an enumerator could be useful.
#   Both of these methods, if I understand them well enough, would avoid my concern over teh number of elements and number of empty groups provided.

9)  Will you try to avoid putting the same people together more than once?

#    I do not believe that some overlap is a problem.  I believe that it creates a sense of continuity and community.
#    We may want to be able to mix people based on learning styles.

10) If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?

#    Yes, with 20 plus names, the chances of getting a duplicate set is extremely small statistically.

11) Should it remember past outputs or not?       

#    I would be nice to store the outputs for the ability to see who has worked with whom.  
#    However, I don't believe that I saving them to be sure that a duplicate is not created.

=end




