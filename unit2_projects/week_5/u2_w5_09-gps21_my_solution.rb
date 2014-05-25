# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

#  	Laura Crowe
#  	My peer-pairing partner had a personal issue come up and was unable to be there.  He did email me.

# Our Refactored Solution

#  With Psuedocode(before we changed given variable names to more suitable names):

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false
  
#  Psuedocode:  Check to see if fav_food is in my list
#              if it is is, then change has_fave to true.
                
  my_list.each_key do |k|
    if k == fav_food
      has_fave = true
      fav_food = k
    end
  end
  
  #  Psuedocode:  If has_fave is still false raise error (This occurs when you pick a food that is not in the hash.).
  
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else
    
  #  Psuedocode:  set fav_food_qty to the value at fav_food.  
    
    fav_food_qty = my_list.values_at(fav_food)[0]
    if num_of_people % fav_food_qty == 0
      
  #  Psuedocode:  Sets num_of_food to the num_of_people / fav_food_qty if evenly divisable.
      
      num_of_food = num_of_people / fav_food_qty
      return "You need to make #{num_of_food} #{fav_food}(s)."
    
      
    else num_of_people % fav_food_qty != 0
      
    #  Psuedocode: checking if we have more people than servings of their fav_food

      
      while num_of_people > 0
      
      # Psuedocode: While people exceeds 0 
      
        if num_of_people / my_list["pie"] > 0
          
          #Psuedocode: Runs if more people than pie servings
          #Psuedocode: line 51 represent the number of pies needed
          #Psuedocode: line 52 reseting num_of_people to people still needing food.
          
          pie_qty = num_of_people / my_list["pie"]
          num_of_people = num_of_people % my_list["pie"]
        elsif num_of_people / my_list["cake"] > 0

          #Psuedocode: Runs if the remaining  than cake servings
          #Psuedocode: line 51 represent the number of pies needed
          #Psuedocode: line 52 reseting num_of_people to people still needing food.

          cake_qty = num_of_people / my_list["cake"]
          num_of_people = num_of_people % my_list["cake"]
        else
          cookie_qty = num_of_people
          num_of_people = 0
        end
      end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end


#  Without Psuedocode (We have also modified the variables to help the code more clearly reflect the user story/purpose):

def bakery_num(num_of_people, menu_item)
  menu = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false
  has_fave = true if menu[menu_item]
  
  
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else  
    serving_size = menu[menu_item]
    if num_of_people % serving_size == 0
      num_of_food = num_of_people / serving_size
      return "You need to make #{num_of_food} #{menu_item}(s)."
    
    else num_of_people % serving_size != 0 
      while num_of_people > 0
        if num_of_people / menu["pie"] > 0      
          pie_qty = num_of_people / menu["pie"]
          num_of_people = num_of_people % menu["pie"]
        elsif num_of_people / menu["cake"] > 0
          cake_qty = num_of_people / menu["cake"]
          num_of_people = num_of_people % menu["cake"]
        else
          cookie_qty = num_of_people
          num_of_people = 0
        end
      end
      return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end


#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."  # Is now fixed

 
# Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#      Our psuedocoding went along nicely.  This helped in understanding what the code was doing.  We had the 
#  			problem of working with code that has on purpose been written in a way that is not clear and hard
# 			to follow logically.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      What exactly is the user story?  What exactly does the code do?  Since my partner was absent, I worked mostly with
#   		Laura Crowe.  We worked out our problems together.  Laura was a great help!

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      I have been struggling not knowing for sure if my psuedocode is correct.  It was very helpful to go through so 
# 	 		much psuedocoding with Laura and realize that I understand it much better than I thought and to gain some
#   		tips and pointers from her.

4)  Did you learn any new skills or tricks?

#          fav_food_qty = my_list.values_at(fav_food)[0]  I thought that the .value_at was neat.  Don't think that I 
# 				have seen it much in my work/research.

5)  How confident are you with each of the Learning Competencies?

#       I feel confident about this challenge.  I did find the ackwardness of the code a bit throwing at first.

6)  Which parts of the challenge did you enjoy?

#       I enjoyed working with Laura Crowe, she whas very helpful.  I enjoyed figuring our what each part of the code
#  			did how it interacted with other parts of the code.  It was satisfying to rename variable and refactor some
# 			and clean up the code.

7)  Which parts of the challenge did you find tedious?

#        I noticed that not having a clear user story and my own perceptions regarding bakeries and the events transpiring
#   			slow down the process.  
=end











