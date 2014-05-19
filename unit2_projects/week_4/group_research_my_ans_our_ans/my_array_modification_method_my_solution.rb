# U2.W4: Group Research Modify Arrays and Hashes

# I worked on this challenge [by myself].

-------------------Release 0 Identify, describe, and teach the method utilized------------------

#  		Identify and describe the ruby method you implemented. Teach your accountability group how to use them.
#  			I used .map.  This takes every element in an array and "maps" it to the same location in a Hash and assigns this newly 
#    			formed key what every value you decide.  I wanted more options, so I made the value the same as the key.  This way
#  				I could access either.
#   		I also used .each.  This moves by increments of 1 through an array or hash.  It iterates and allows you to preform a given set 
#  				of tasks on each element
#   		I used .kind_of? String, because I knew that I only wanted to change the Integers in my array and not the Strings.
#   		I used .push.  This moves/pushes information to an array.
#  		Here are examples from my code where these occured:

#	hash = Hash[i_want_pets.map {|x| [x, x]}]
#	hash.each { |key, value| key
#		if key.kind_of? String
#		new_array.push(hash[key])


------------------ Pseudocode -------------------------------------------

# 1. Pseudocode

# --------------- Modifying Existing Data-----------------------------------------------------

# Write a method 1 my_hash_modification_method which searchs an array of data and increases the number elements by 1.
# Write a method 2 update_ages_in_hash which adds the correct number of years to all of your pets.

# What is the input?

#  	Method 1 utilized an Array
#   Method 2 utilized a Hash

# What is the output? (i.e. What should the code return?)

# 	Both method 1 and 2 produce Arrays as outputs.
#   Method 1 increases the number of desired pets by 1 and the number of current pets by 1.
#  	Method 2 increase the age of each pet by a specified number.

# What are the steps needed to solve the problem?

=begin

# Increasing wants

Create an Array i_want_pets and assign it the value given in the example ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(."]

Creat Hash by mapping i_want_pets and assigning each key the value of key

Define my_hash_modification_method that can be passed two parameter: hash and b(b is the amount by which the number of pets will increase.)
	Create the empty array, new_array
		Using .each iterate over our hash investigaing the key.
		if key.kind_of? String
		else 
			Increase value by 1
			Replace the current hash key with this new value
		end if
	end .each
	Using each again, iterate over our new hash
		Push the values to the new_array
		end .each
		print new_array
end Def

Call my_hash_modification_method(hash, 1)


# Aging pets

Create the following Hash: my_family_pets_age = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

Defin the method update_ages_in_hash that accepts as parameters: hash and b(The number of years elapsed)
	Iterate over the hash using .each {|key, value| value
	Increase the value by b
	push this new value to the hash
	end .each
end method

Call update_ages_in_hash(my_family_pets_age, 2)

=end


-------------------Initial Solution-------------------------------------------

# Initial Solution

# --------------- Modifying Existing Data-----------------------------------------------------

# I want more pets

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(."]

hash = Hash[i_want_pets.map {|x| [x, x]}]
print hash
puts

def my_hash_modification_method(hash, b)
	new_array = []
	hash.each { |key, value| key
		if key.kind_of? String
			puts "okay"
		else 
			puts "not okay"
			value = value + b
			hash[key] = value
		end
	}
	print hash
	hash.each { |key, value| value
		puts value
		new_array.push(hash[key])
		}
		print new_array
end

my_hash_modification_method(hash, 1)

# Aging pets

my_family_pets_age = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

def update_ages_in_hash(hash, b)
	hash.each {|key, value| value
	value = value + b
	hash[key] = value
	}
end

update_ages_in_hash(my_family_pets_age, 2)
print my_family_pets_age


-------------------Refactored Solution-------------------------------------------

# I want more pets
puts 
puts "Here are my wants:"
puts
i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2, ":(."]

array = i_want_pets
hash = Hash[array.map {|x| [x, x]}]

def my_hash_modification_method(hash, b)
	new_array = []
	hash.each { |key, value| key
		if key.kind_of? String
		else 
			value = value + b
			hash[key] = value
		end
	}
	hash.each { |key, value| value
		new_array.push(hash[key])
		}
		print new_array
end

my_hash_modification_method(hash, 1)

puts 
puts
puts "This is 2 years in the future:"
puts

# Aging pets

my_family_pets_age = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

def update_ages_in_hash(hash, b)
	hash.each {|key, value| value
	value = value + b
	hash[key] = value
	}
end

update_ages_in_hash(my_family_pets_age, 2)
print my_family_pets_age

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

#      .each worked well it helping iterate.  The array was converted to a hash and I had difficulties with using .push correctly.


2)  What questions did you have while coding? What resources did you find to help you answer them?

# 		Why did the use of .push on information from the array converted to hash keep telling me that [] implicated could
#   			not convert to Fixnum.  I wish I still had the troubled code, because it looked like it should work, but there
#   			must be some syntax error that I had.  I stopped working for about 5 minutes came back and a new idea formed 
#   			and this one worked and is in the above code.     

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      Please refer to question 2).

4)  Did you learn any new skills or tricks?

#      I feel like I have a better grasp of .map 

5)  How confident are you with each of the Learning Competencies?

#      The ideas came quickly, but I was hung up on the error that I mentioned in 2) for quite some time.  

6)  Which parts of the challenge did you enjoy?

#       I enjoyed separating out the Strings from the Integers and changing only the Integers.

7)  Which parts of the challenge did you find tedious?

#        Please refer to question 2)
=end
