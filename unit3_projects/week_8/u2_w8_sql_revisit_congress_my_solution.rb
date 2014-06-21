# U3.W8: REVISIT BONUS SQLite Gem

# I worked on this challenge [by myself and then some with Patrick]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"
# Uses congress_poll_results.db as the database, opens it and using SQLite3 establishes this information as a Global Variable.

def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
#  Passes the SELECT block to the db Global Variable and extracts congress members from the State of Az.
  az_reps.each { |rep| puts rep }
#  This iterates over all elements of the variable az_rep and puts them to the screen.
end

def print_longest_serving_reps(minimum_years)  #  This method accepts an argument of minimum_years
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
#  This passes the SELECT block to the db Global Variable and extracts congress members who meet the critia years_in_congress > #{minimum_years}
end

def print_lowest_grade_level_speakers(num)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{num}")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def longest_running_reps
  puts "LONGEST RUNNING REPRESENTATIVE"
  a = $db.execute("SElECT MAX(years_in_congress) FROM congress_members")
  b = a[0]
  c = b[0]
  d = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress = #{c}")
  e = d[0]
  f = e[0]
  g = e[1]
  puts "#{f} - #{g} years"   
end


def reps_from_given_states
  puts "REPRESENTATIVES FROM NEW JERSEY, NEW YORK, MAINE, FLORIDA, and ALASKA"
  puts $db.execute("SELECT name FROM congress_members WHERE location IN ('NJ', 'NY', 'MA', 'FL', 'AL')")
end

=begin
def number_of_votes_received
  l = 1
  while l < 531
    v = 0
    puts "Politician #{l} received:"
    puts $db.execute("SELECT politician_id, COUNT(politician_id) FROM votes WHERE politician_id = #{l}")
    l = l + 1
    v = v + 1
    puts v
  end
end
=end


def number_of_votes_received

#    puts $db.execute("SELECT name, COUNT(politician_id) FROM congress_members JOIN votes ON (congress_members.id = votes.politician_id) GROUP BY name")

puts "REPS and VOTES Received."
    pol_votes = $db.execute("SELECT n.name, COUNT(v.voter_id) 
                              FROM congress_members n, voters r, votes v 
                              WHERE n.id = v.politician_id AND v.voter_id = r.id 
                              GROUP BY v.politician_id ORDER BY COUNT(v.voter_id) DESC")
                              
    pol_votes.each {|rep, votes| puts "#{rep} - #{votes} votes."}
end


=begin


    puts $db.execute("SELECT name, first_name, last_name FROM congress_members JOIN voters ON (voter_id = id) GROUP BY name")
    
    # Create a listing of each Politician and the voter that voted for them
    #    output should include the senators name, then a long list of voters separated by a comma
=end

def list_of_politician_and_their_voters
puts "REPS and A List of their Voters."
    pol_votes = $db.execute("SELECT n.name, r.first_name, r.last_name) 
                              FROM congress_members n, voters r, votes v 
                              WHERE n.id = v.politician_id AND v.votes_id = r.id 
                              GROUP BY n.name")
                              
    pol_votes.each {|rep, fn, ln| puts "#{rep}"
                                  puts "#{fn}"
                                  puts "#{ln}"}
end


#  ---------------------------------------------

print_arizona_reps

print_separator

print_longest_serving_reps(35)

print_separator

longest_running_reps
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

#371         Rep. John Dingell   D           MI          12.12324485  11.55823085    57 

print_separator
print_lowest_grade_level_speakers(8) 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
reps_from_given_states
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves 
#  some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)

number_of_votes_received

# Create a listing of all of the Politicians and the number of votes they recieved 
#    output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, 
#        it should just have a similar format)

list_of_politician_and_their_voters

# Create a listing of each Politician and the voter that voted for them
#    output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!




# REFLECTION- Include your reflection as a comment below.

# How does the sqlite3 gem work?  

# sqlite3 works by allowing the user to access tables of data using SELECT.  SELECT is your way of telling SQL which columns you would like to query. FROM is your way of telling SQL which database to access.  WHERE allows you to create conditionals to pick through the data more carefully.

#  What is the variable `$db` holding?  

# $db creates a Global Variable that, in this case, that holds all of the data related to congress_poll_results.

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  

#  .execute is a method that passes a SELECT block, which the execute method then uses to access vital information in the database.

#  Take a stab at explaining the line `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for your fellow students.  

# Again $db holds all of the information related to the databases.  .execute is a method that passes the SELECT block, which the execute method then uses 
#     to access vital information in the database.
# In this case the SELECT communicates that we are interested in data being returned from the name column.  The FROM communicates that we are interested in
#     surveying the databased called congress_members. 
# In this case the WHERE sets up a conditional.  Please return all names from congress_members that meets the requirement.  They need to have served in 
#     Congress for a minimum number of years = the passed variable's values.  

# If you're having trouble, find someone to pair on this explanation with you.




#  Experiments:

=begin
----------In figuring out how to pull out the name and Max year as useable data I ran the following diagnostics, because the data on in the command looks like an array within
an array at times and like strings or integers at other times:

  if d == 57
    puts "It is a number."
  elsif d == [57]
    puts "It is an array."
  elsif d == [[57]]
    puts "It is an array within an array."
  else
    puts "The output is neither a number nor an array."
  end

  if e == 57
    puts "It is a number."
  elsif e == [57]
    puts "It is an array."
  elsif e == [[57]]
    puts "It is an array within an array."
  else
    puts "The output is neither a number nor an array."
  end

  if f == 57
    puts "It is a number."
  elsif f == [57]
    puts "It is an array."
  elsif f == [[57]]
    puts "It is an array within an array."
  else
    puts "The output is neither a number nor an array."
  end

  g = f + f
  puts g


-------------Trying to automate printing off representatives from states:

def reps_from_given_states(states)
  states.each {|st|
  puts "REPRESENTATIVES FROM #{st}"
  puts $db.execute("SELECT name FROM congress_members WHERE location = NJ")
  }
end

# The error:

/usr/local/rvm/gems/ruby-1.9.3-p392/gems/sqlite3-1.3.9/lib/sqlite3/database.rb:91:in `initialize': no such column: NJ (SQLite3::SQLException)
	from /usr/local/rvm/gems/ruby-1.9.3-p392/gems/sqlite3-1.3.9/lib/sqlite3/database.rb:91:in `new'
	from /usr/local/rvm/gems/ruby-1.9.3-p392/gems/sqlite3-1.3.9/lib/sqlite3/database.rb:91:in `prepare'
	from /usr/local/rvm/gems/ruby-1.9.3-p392/gems/sqlite3-1.3.9/lib/sqlite3/database.rb:134:in `execute'
	from my_solution.rb:58:in `block in reps_from_given_states'
	from my_solution.rb:56:in `each'
	from my_solution.rb:56:in `reps_from_given_states'
	from my_solution.rb:81:in `<main>'

=end


# 4. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

I really struggled on this particuluar assignment.  I feel like the idea of primary and foreign keys makes sense, in fact much of it seems to make sense, but I can not
overcome the BONUS questions.  I did research and worked on the challenge with another Boot.  The other Boot ultimately looked up another Boots answer.  It is this answer
that I have above for number of votes received.  How it works seems to make sense, but when I extend this thinking to the other BONUS question, it fails over and over.
I will need to study this more and work with others.  I believe that it is a knowledge gap instead of a logic gap.

2)  What questions did you have while coding? What resources did you find to help you answer them?

My original SELECT/COUNT/FROM/JOIN seems like it should work.  I am looking forward to understanding this.  At this point I have faulted and spent too much time on
this assignment.    

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

See answers 1) & 2)  

4)  Did you learn any new skills or tricks?

The ability to assign variable of the table in the FROM portion, I had not remembered.

5)  How confident are you with each of the Learning Competencies?

I feel confident on the non BONUS material.  I even feel confident on the ideas behind the BONUS, but not on it execution.       

6)  Which parts of the challenge did you enjoy?

I like a challenge and the fun of seeing the solution.  So, the BONUS was both frustrating and enjoyable, because I know that I will eventually understand it.    

7)  Which parts of the challenge did you find tedious?

The BONUS section as mentioned above.



