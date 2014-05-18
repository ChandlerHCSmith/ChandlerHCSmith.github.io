# U2.W4: Group Research Modify Arrays and Hashes



#  -------------------Release 0 Identify, describe, and teach the method utilized------------------

#  		Identify and describe the ruby method you implemented. Teach your accountability group how to use them.
#  			I used .map.  This takes every element in an array and "maps" it to the same location in a Hash and assigns this newly 
#    			formed key what every value you decide.  I wanted more options, so I made the value the same as the key.  This way
#  				I could access either.
#   		I also used .each.  This moves by increments of 1 through an array or hash.  It iterates and allows you to preform a given set 
#  				of tasks on each element
#   		I used .kind_of? String, because I knew that I only wanted to change the Integers in my array and not the Strings.
#   		I used .push.  This moves/pushes information to an array.
#  		Here are examples from my code where these occured:

#	            hash = Hash[i_want_pets.map {|x| [x, x]}]
#	            hash.each { |key, value| key
#		          if key.kind_of? String
#		          new_array.push(hash[key])


#  -------------------Refactored Solution-------------------------------------------

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


