# U2.W4: Homework Cheater!

# Complete each step below according to the challenge directions and require "u2_w4_harder_calculate_median_my_solution"
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself].

-------------------Release 0 Run the Tests-------------------------------------------
=begin 

=end


-------------------Release 1 Pseudocode-------------------------------------------

# 1. Pseudocode

1 Writing an essay on the fly-------------------------------------------------------------

#Write a method total which takes an Array of numbers as its input and returns their total (sum).

# What is the input?

#  	Takes both String and Integers

# What is the output? (i.e. What should the code return?)

# 	A short essay using the data from the inputs as key information

# What are the steps needed to solve the problem?

=begin
Define three methods that have names depending on the subject matter (Each method accepts an array)
  Assign variables using the indices of the elements in the array.
  Write out template (different for each subject)
  Insert into the template all of the variables just assigned using #{}
end method

Ask the user to chose a subject.
  Use Case and when to direct code.
    Under each specific when/case create an empty array to collect user data
    Under each specific when/case create the appropriate puts questions to collect user input.
    Under each specific when/case assign appropriate variables this information using gets.chomp
    Under each specific when/case push the user data the appropriate array.

  Call the appropriate method which generates the subject specific essay.
  (120-157 is written out three times.  This allows the user to generate three subject specific essays)

  (I that this is not actually pseudocode, however the procedure so repetitive that it seems to condense the ideas
  but still adequately detail the flow.)
=end



-------------------Release 2 Initial Solution-------------------------------------------

# 2. Initial Solution

2 Writing an essay on the fly-------------------------------------------------------------

def mad_lib_author(array)
  title = array[0]
  first_name = array[1]
  last_name = array[2]
  year = array[3]
  book = array[4]
  quote = array[5]
  gender = array[6] 

  puts
  puts "#{title}"
  puts
  puts 
  puts "#{first_name} #{last_name} is considered to be a most influential author."
  puts "#{gender.capitalize} is well known for having penned #{book}."
  puts "#{gender.capitalize} will be remembered for many years to come for the following quote:
  \"#{quote}\""
  puts "Sadly, #{first_name} #{last_name} died in #{year}."
end 

def mad_lib_military_leader(array)
  title = array[0]
  first_name = array[1]
  last_name = array[2]
  year = array[3]
  famous_battle = array[4]
  quote = array[5]
  gender = array[6] 

  puts
  puts "#{title}"
  puts
  puts 
  puts "#{first_name} #{last_name} is considered to be a one of the greatest military leaders of all times."
  puts "#{gender.capitalize} is well known for having planned the battle of #{famous_battle}."
  puts "#{gender.capitalize} will be remembered for many years to come for the following quote:
  \"#{quote}\"" 
  puts "Sadly, #{first_name} #{last_name} died in #{year}."

end

def mad_lib_scientist(array)
  title = array[0]
  first_name = array[1]
  last_name = array[2]
  year = array[3]
  theory = array[4]
  quote = array[5]
  gender = array[6] 

  puts
  puts "#{title}"
  puts
  puts 
  puts "#{first_name} #{last_name} is considered to be a most influential scientists."
  puts "#{gender.capitalize} is well known for having conceptualized #{theory}."
  puts "#{gender.capitalize} will be remembered for many years to come for the following quote:
  \"#{quote}\" "
  puts "Sadly, #{first_name} #{last_name} died in #{year}."
end

puts "Are you in need of a short essay regardin an author, a military leader, or a Scientist?"
need = gets.chomp.downcase


case need
when "author"
  array_author = []
  puts "Please provide a title for your Essay.  (Capitalization matters.)"
  title = gets.chomp.capitalize
  array_author.push(title)
  puts "Please provide their first name only."
  first_name = gets.chomp.capitalize
  array_author.push(first_name)
  puts "Please provide their last name only."
  last_name = gets.chomp.capitalize
  array_author.push(last_name)
  puts "Please provide the year in which they died, as an integer."
  year = gets.chomp
  array_author.push(year)
  puts "Please provide only one book for which they were considered famous."
  book = gets.chomp
  array_author.push(book)
  puts "Please provide a famous quote for which they are known. (Please do not include the quotation marks.  They have already been added.)"
  quote = gets.chomp.capitalize
  array_author.push(quote)
  puts "Was #{first_name} #{last_name} a male or female?"
  gender = gets.chomp.downcase
  if gender == "male"
    array_author.push("he")
  elsif gender == "female"
    array_author.push("she")
  else
    array_author.push(gender)
  end
mad_lib_author(array_author)

when "military leader"
  array_military_leader = []
  puts "Please provide a title for your Essay.  (Capitalization matters.)"
  title = gets.chomp.capitalize
  array_military_leader.push(title)
  puts "Please provide their first name only."
  first_name = gets.chomp.capitalize
  array_military_leader.push(first_name)
  puts "Please provide their last name only."
  last_name = gets.chomp.capitalize
  array_military_leader.push(last_name)
  puts "Please provide the year in which they died, as an integer."
  year = gets.chomp
  array_military_leader.push(year)
  puts "Please provide only one of the famous battles that they lead for which they were considered famous.  For example: if they lead the Battle of the Bulge, please only provide (the Bulge)."
  famous_battle = gets.chomp
  array_military_leader.push(famous_battle)
  puts "Please provide a famous quote for which they are known. (Please do not include the quotation marks.  They have already been added.)"
  quote = gets.chomp.capitalize
  array_military_leader.push(quote)
  puts "Was #{first_name} #{last_name} a male or female?"
  gender = gets.chomp.downcase
  if gender == "male"
    array_military_leader.push("he")
  elsif gender == "female"
    array_military_leader.push("she")
  else
    array_military_leader.push(gender)
  end

mad_lib_military_leader(array_military_leader)

when "scientist"
  array_scientist = []
  puts "Please provide a title for your Essay.  (Capitalization matters.)"
  title = gets.chomp.capitalize
  array_scientist.push(title)
  puts "Please provide their first name only."
  first_name = gets.chomp.capitalize
  array_scientist.push(first_name)
  puts "Please provide their last name only."
  last_name = gets.chomp.capitalize
  array_scientist.push(last_name)
  puts "Please provide the year in which they died, as an integer."
  year = gets.chomp
  array_scientist.push(year)
  puts "Please provide only one theory for which they were considered famous. Please write (The theory of ______)"
  theory = gets.chomp
  array_scientist.push(theory)
  puts "Please provide a famous quote for which they are known. (Please do not include the quotation marks.  They have already been added.)"
  quote = gets.chomp.capitalize
  array_scientist.push(quote)
  puts "Was #{first_name} #{last_name} a male or female?"
  gender = gets.chomp.downcase
  if gender == "male"
    array_scientist.push("he")
  elsif gender == "female"
    array_scientist.push("she")
  else
    array_scientist.push(gender)
  end

mad_lib_scientist(array_scientist)

end



-------------------Release 3 Refactored Solution-------------------------------------------

# 3. Refactored Solution

3 Writing an essay on the fly: Refactored-------------------------------------------------------------

#   See above.  My Initial is the same as my refactored other than some spelling errors, copying errors, 
#     and one assigning error.  All of these were fixed while creating the intial code.


-------------------Release 4 My Reflections-------------------------------------------
# 4. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Creating three methods allowed the creation of three subject specific essays.  Asking the user for their information 
#         in a very specific way allowed me to know where that data would be directed.  This seemed fairly straight forward. 
#         Even though my solution works, I have a feeling you were looking for something else.  I just didn't see the need, for 
#         the task, for anything more sophiscated.  Please let me know. 

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      This assignment was fun and seemed fairly straight forward.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      The assignment went pretty smoothly.  

4)  Did you learn any new skills or tricks?

#      I got some practice on case and when syntax.

5)  How confident are you with each of the Learning Competencies?

#       I feel confident about the assignment.  

6)  Which parts of the challenge did you enjoy?

#       It was fun making the templates and trying to be sure that they created somewhat of a subject specific feel.

7)  Which parts of the challenge did you find tedious?

#       Sense my code was repetitive, not very DRY, I had to be sure that all the copied variables that needed to be 
#         renamed had been renamed properly.
=end
