# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Maddison Brusman
# 2. Chandler Smith
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add an item and the # of items
# As a user, I want to remove an item
# As a user, I want to check list
# As a user, I want to check the quanity of an item
# As a user, I want to see if item is already in list
 
# Pseudocode
  # Define class GroceryList
    # Define initialize method, which accepts first_name and items as arguments
      #  Define firstname as an instance variable = to first_name
      #  Define list as an instance variable = the hash that wil be passed in.
    # End

    # Define add_item method, which accepts item and num as arguments
      # If @list[item]
        #  Set @list[item] = to @list[item] + num
      # Else 
        # Set @list[item] = num
      # End If/Else
    # End 

    # Define remove_item method, which accepts item, the item to be removed from the list, as the argument.
      # @list call delete(item)
    # End

    # Define add_quantity, which accepts item and num as arguments
      # @list[item] += num
    # End

    # Define decrease_quantity, which accepts item and num as arguments
      # @list[item] -= num
    # End

    # Define check_quantity, which accepts item as an argument
      # @list[item]
    # End
  
    # Define present, which accepts item as an argument
      # @list call include?(item)
    # End
# End
 
# Your fabulous code goes here....

class GroceryList
  attr_reader :list,:firstname
  
  def initialize(first_name, items)
    @firstname = first_name
    @list = items
  end

  def add_item(item, num)
    if @list[item] 
       @list[item] = @list[item] + num
    else
      @list[item] = num
    end
  end
  
  def remove_item(item)
    @list.delete(item)   
  end
  
  def add_quantity(item,num)
    @list[item] += num
  end
  
  def decrease_quantity(item,num)
    @list[item] -= num
  end
  
  def check_quantity(item)
    @list[item]
  end
  
  def present(item)
    @list.include?(item)
  end

end

# DRIVER CODE GOES HERE. 

ourlist = GroceryList.new("Maddison", {"apple"=>2, "orange"=>5})

def assert
  raise "Assertion failed!" unless yield
end

ourlist.add_item("apple",3)
assert {(ourlist.list == {"apple"=>5, "orange" =>5})}

ourlist.remove_item("orange")
assert {ourlist.list.include?("orange") == false}

ourlist.add_quantity("apple",3)
assert {(ourlist.list == {"apple"=>8})}

ourlist.decrease_quantity("apple",7)
assert {(ourlist.list == {"apple"=>1})}

assert {ourlist.check_quantity("apple") == 1}

assert {ourlist.present("orange") == false}


# REFACTOR

#  Our code was fairly DRY to begin with.
#  We did notice that in method, "add_item", line 62 could be dried up a little:

#        @list[item] += num


# REFLECTION

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

Building simple methods that accomplish only one task worked well.  We faced the question of which storage container was more
appropriate for a grocery list, which had item and quantity.  We decided that using a Hash, with keys and values made quite 
a bit of sense.     

2)  What questions did you have while coding? What resources did you find to help you answer them?

My pair and I questioned some of the syntax for accessing and modifying keys and values.  Just needed to look it up and work 
with our instructor.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

I find the order of writing code to be different per person.  Maybe one person starts with Pseudocoding.  Maybe another person
starts by really working out the User Story.  Maybe another person starts by building an scaffolding of their code.  Maybe another 
person starts by designing Tests.  It is interesting how these affect the development and the interactions of the members in 
the pair.

4)  Did you learn any new skills or tricks?

My pairing partner uses .include? very comfortably, so I learned from exposure.

5)  How confident are you with each of the Learning Competencies?

I feel like the overall idea of this challenge is very clear.  I know that I must practice to keep the various different 
syntaxes.  

6)  Which parts of the challenge did you enjoy?

It is always fun to work with other coders/programmers.  I enjoyed developing all of the needed methods.    

7)  Which parts of the challenge did you find tedious?

I enjoyed the whole challenge.

