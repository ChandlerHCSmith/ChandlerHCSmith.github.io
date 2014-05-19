# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |iterator| iterator =~ /[#{thing_to_find}]/ }
end

def my_hash_finding_method(source, thing_to_find)
  updatehash = source.select { |key, value| value == thing_to_find }
  updatehash.keys
end

# Identify and describe the ruby method you implemented. 
# 
# The primary method used here is ".select". It returns a new entity, 
# in this case... a new hash or new array... consisting of what we looked
# for. For instance, in the first method (my_array_finding_method), I used
# .select, created an iterator... and then a regular expression to that states,
# if my iterator equals my "thing_to_find", keep it... else, let don't keep it.
# In the second method (my_hash_finding_method), we did a very similar task
# but as hashes have keys AND values, and we were looking for specific values,
# I had to just search over them and ONLY return the keys, which is what the second
# method ".keys" is doing.

# Person 2
def my_array_modification_method(source, thing_to_modify)
  source = Hash[source.map {|x| [x, x]}]
  new_array = []
  source.each { |key, value| key
    if key.kind_of? String
    else 
      value = value + thing_to_modify
      source[key] = value
    end
  }
  source.each { |key, value| value
    new_array.push(source[key])
    }
    new_array
end

def my_hash_modification_method(source, thing_to_modify)
  source.each {|key, value| value
  value = value + thing_to_modify
  source[key] = value
  }
  source
end

# Identify and describe the ruby method you implemented. Teach your accountability group how to use them.
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

#  This didn't produce a destructive effect on my_array_modification_method.
#  This threw off test results further on.
#  I will have to look into this later.


# Person 3
def my_array_sorting_method(source)
  source.length.times do |i|
    source[i] = source[i].to_s
  end
  source.sort
end

def my_hash_sorting_method(source)
  source.sort_by { |k, v| [v, k] }
end

# Identify and describe the ruby method you implemented. 
# .sort_by
# I actually found a site that showed how to configure it to sort hashes by the value first and then by the key… 
# I don’t really understand the syntax for this, but hopefully with additional practice, I’ll get it.
# .sort_by works on arrays and hashes, and lets you specify different criteria - for example you could say:
# a = [“loremat”, “spicy”, “ipso”, “dolor chicken fingers”]
# a.sort_by { |word| word.length}
# and get [“ipso”, “spicy”, “loremat”, “dolor chicken fingers”] as a result


# Person 4
def my_array_deletion_method(source, thing_to_delete)
	
  source.each do |value|
    if value.index(thing_to_delete) != nil
		  source.delete(value)
    end
	end
  source.length.times do |index|
    if ('0'..'9').include?(source[index])
      source[index] = source[index].to_i
    end
  end
  source
end
def my_hash_deletion_method(source, thing_to_delete)
  		source.delete(thing_to_delete) { "Nothing to delete" }
	source
end

# Identify and describe the ruby method you implemented. 
# The ruby method I implemented is the delete method.  Delete is really simple and straight forward to use
# You just need to take the array pass it to the delete method and specify what array or hash key you 
# want deleted.   For my array example up above.    I had to iterate through the 
# array intially since I was only given the letter of what they wanted deleted.
# So if I said I want anything with the letter "a" deleted, I will have to go through
# each array element and check to see if it contains the letter "a".  I used the 
# .index method which I needed to pass a string to it.   If index find a matching letter,
# it will increment.   So I basically just set a condition that if we find any array element that
# has a matching letter, delete it using "arrayname".delete(arrayelement)
#
#The hash version of delete is even easier to implement.   You bascially just need to take the array and pass
#it to delete and specify what key you want deleted.    So in my example, I took the source array, passed it to 
#the delete method, set the key to thing_to_delete and it will return the source array without the key they 
#want deleted.  
#
#Also on both version of delete, there is an optional default value.   I just set it to equal the string "Nothing to delete."
#if it doesnt find anything that matches.
#Documentation here
#http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-delete
#http://www.ruby-doc.org/core-2.1.2/Hash.html#method-i-delete

################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
#  It was difficult, because I didn't realize, probably should have realized, that all the pieces relied on each other.  I thought that we were each working
#     out methods to accomplish different tasks on the same data and that we would learn new methods from each other's work.  It is true that we learned
#     from each others work.
# 
#  Unfortunately, I found on Sunday night that my_array_modification_method was not destructive and since I was person 2 and since my results
#     were to be used by person 3 and person 4, this threw an error in two subsequent tests.  I tried to fix the error and was not able to.
#     I know that we all make mistakes, but I let my team down. 
#
#  I did learn a lot about .map, .each, .kind_of?, .select, and .index. 
#  I know that I will use all of these in the future.
#  The assignment was great and I would like another go at it!



