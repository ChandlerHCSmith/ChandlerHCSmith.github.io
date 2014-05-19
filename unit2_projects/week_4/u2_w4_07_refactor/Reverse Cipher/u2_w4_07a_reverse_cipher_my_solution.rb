
# Reverse Cipher

# Original Code

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end



# Refactored Code

def translate_to_cipher(sentence)
    encoded_sentence = []
    sentence.downcase.each_char do |element|
      if Hash[('a'..'z').to_a.zip(('a'..'z').to_a.rotate(2))].include?(element)
        encoded_sentence << Hash[('a'..'z').to_a.zip(('a'..'z').to_a.rotate(2))][element]
      elsif element == ' '
        encoded_sentence << ["@", "#", "$", "%", "^", "&", "*"].sample
      else 
        encoded_sentence << element
      end
     end
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
#       The .to_a method takes a range of values and converts them into an array.  This array contains all of this values
#           in the order that they were presented between the ().
# 2. How does the rotate method work? What does it work on?
#       .rotate(#) takes the elements in the array on which it is applied and shifts them a fixed amount.  In this
#           case an index of 4.
# 3. What is `each_char` doing?
#       .each_char takes each character of a string and passes it to a given block.  This allows us to split a string
#           easily into it's individual characters. 
# 4. What does `sample` do?
#       .sample takes a sample from the array spaces.
# 5. Are there any other methods you want to understand better?
#       alphabet.zip appears to mix elements to two arrays together.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
#       It was fun to see how far I could refactor the code.  I like that it still work, however, it is not as readable.
#       Now, it might not be as readable only because I am fairly new.
# 7. Is this good code? What makes it good? What makes it bad?
#       It is descent code.  It is relatively DRY.  It accomplishes several tasks by utilizing built-in methods.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
#   Yes, it does.  This is because of .rotate that has "transposed/moved" all of the characters to the right by 4.
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


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

#      Good google research and using logic helped find answers.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      During refactoring I did wonder if I could just simply replace variables with their equivalents, even 
#           though these involved methods.  It was cool to see that they still worked.  I think that this
#           will help in the future.  Both in writing and in reading code.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      In this challenge, I was mostly looking up methods and seeing how they worked.

4)  Did you learn any new skills or tricks?

#      .zip, .rotate, .sample, these are methods that I was not very familiar with before.

5)  How confident are you with each of the Learning Competencies?

#       I still question .zip, however .rotate and .sample seem to make a lot of sense.

6)  Which parts of the challenge did you enjoy?

#       Having specific methods to research was fun and tedious.

7)  Which parts of the challenge did you find tedious?

#       Sometimes it takes awhile to find the correct explanation or documentation.  Patience is supreme.  
=end




