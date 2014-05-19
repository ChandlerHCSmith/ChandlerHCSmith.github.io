# U2.W4: Cipher Challenge


# I worked on this challenge with: Gannon.

------------------  Release 0 What is Expected ---------------------------------

#  This code take a message that has been encoded and decodes it.  The process if a simple one for one replace with a
#       shift of alpha characters by 4.  Pretty cool.

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

-------------------  Release 1: Write tests  ------------------------------------

# Driver Code:


p north_korean_cipher_1("lm^kerrsr.^mx'w^xmqi^xs^temv!") == "hi gannon. it's time to pair!"
p north_korean_cipher_1("m^aerx%e&gsoi!") == "i want a coke!" 
p north_korean_cipher_1("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher_1("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher_1("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher_1("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher_1("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"


--------------------  Release 2: Read the code -------------------------------------

def north_korean_cipher(coded_message)
  coded_message_split = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
                          #.split converts the coded_message-string into an array of elements, which start at the no space
                          #   and end at the next no space between symbols.

  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   #  Gannon and I came up with a way to throw out the cipher altogether.
            "h" => "d",   #  We took coded message and still applied downcase and split("")
            "i" => "e",   #  Next we converted all symbols to their ASCii equivalent.
            "j" => "f",   #  Then we used an conditional to check if the ASCii values fall in 97 to 127.  
            "k" => "g",   #  If they did, then we converted them by adding 22 or subtracting 4 depending whether 
            "l" => "h",   #     they were at the beginning of our cipher list or at the end.
            "m" => "i",   #  You still need all of the other conditionals.
            "n" => "j",   #  My code has a small glick in it somewhere.  I have looked and feel that it is one of the
            "o" => "k",   #     the breaks.   *** Sadly, I need to move on.
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  coded_message_split.each do |element| # What is #each doing here?(This looks at each element, one-by-one, in the coded_message_split array)
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
                        # (It makes sense, because you haven't found any matches yet.  This allows you to indicate when a 
                        #   match is found, by changing this value to true.)
                        # (If it is set to true, then all trues need to be changed to falses and line 68 needs to be
                        #   changed to if found_match.)
                        # (If found_match is left If not found match, then the decoded message and the encoded message
                        #    become interwine symbol by symbol ex (decoded,encoded))
    cipher.each_key do |hash_key| # What is #each_key doing here?(This iterates through the cipher, looking at the key 
                                  #    under inspection.)
      if element == hash_key  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
                  #  This is comparing the element from the coded_message_split array with the current key from
                  #  the cipher hash.  If they are the same the value from the cipher hash is pushed to our array
                  #  decoded_sentence.
        puts "I am comparing x and y. X is #{element} and Y is #{hash_key}."
        decoded_sentence << cipher[hash_key]
        found_match = true
        break  # Why is it breaking here?  (# So we can break out of the cipher.each_key and go to 
                                               # coded_message_split.each and get another element to check and 
                                               # reset found_match.)
                                            #(However, this one break is removed, it appears to create no problem.)
      elsif element == "@" || element == "#" || element == "$" || element == "%"|| element == "^" || element == "&"|| element =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(element) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << element       # The .to_a changes the information into an array.
        found_match = true                # The .include? looks for any elements that meet a the crition. 
        break                             #    In this case they need to be numbers between 0 and 9 inclusively.
      end 
    end
    if not found_match  # What is this looking for?  (There is not match and the symbol from the array needs to be
                        #   transferred)
      decoded_sentence << element
    end
  end


  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
                                          #(It is looking for one or more digits) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?  (This returns a sentence with all numbers divided by 100)      
end

# Find out what Kim Jong Un is saying below

p north_korean_cipher("lm^kerrsr.^mx'w^xmqi^xs^temv!")
p north_korean_cipher("m^aerx%e&gsoi!")
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") 
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Your Refactored Solution

--------------------------------------------------------------------------------------------

def north_korean_cipher(coded_message)
  coded_message_split = coded_message.downcase.split("") 

  decoded_sentence = []
  

   
  coded_message_split.each do |element|
  element_ascii = element.sum
  found_match = false

# ------- additional code to analysis the ASCii values and change symbols accordingly.

      if element_ascii >= 97 && element_ascii <=122

        if element_ascii >= 97 && element_ascii <= 100
          element_ascii_decoded = element_ascii + 22
          puts element_ascii_decoded
          element_ascii_decoded_recovered = element_ascii_decoded.chr
          puts element_ascii_decoded_recovered
          decoded_sentence << element_ascii_decoded_recovered
          found_match = true
          break
        else element_ascii >= 101 && element_ascii <=122
          element_ascii_decoded = element_ascii - 4
          puts element_ascii_decoded
          element_ascii_decoded_recovered = element_ascii_decoded.chr
          puts element_ascii_decoded_recovered
          decoded_sentence << element_ascii_decoded_recovered
          found_match = true
          break
        end

        found_match = true
        break  
      elsif element == "@" || element == "#" || element == "$" || element == "%"|| element == "^" || element == "&"|| element =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(element)
        decoded_sentence << element
        found_match = true
        break
      end 

    if not found_match
      decoded_sentence << element
    end

  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end  
  end
  return decoded_sentence        
end

# Find out what Kim Jong Un is saying below

p north_korean_cipher("lm^kerrsr.^mx'w^xmqi^xs^temv!")
p north_korean_cipher("m^aerx%e&gsoi!")
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") 
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

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

#      I seemed to be able to quickly how the to iterations were running.  In refactoring, Gannon and I came up with
#         a pretty cool way of turning all of the symbols in the input into an array of single symbols and then using
#         .chr and .sum we were able to turn ASCii into symbols and symbols into ASCii's.
#         This was useful, because then we could change the ASCii value of the "letter" to their correct ASCii
#         values and convert them back to letters.  Cool!

2)  What questions did you have while coding? What resources did you find to help you answer them?

#      Had to double check these two .to_a .include?(element) methods.  Also, I made sure that .join does 
#         what I thought it did.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#      The conversion between ASCii and symbol and symbol and ASCii took us awhile to find the correct documentation
#         that was still supported.

4)  Did you learn any new skills or tricks?

#      I really enjoyed the ASCii and symbol approach.  It seems sophisciated.

5)  How confident are you with each of the Learning Competencies?

#     I am very confident of the LC's in this challenge.  

6)  Which parts of the challenge did you enjoy?

#       Again, I like the puzzle/logic aspect.  I really liked trying to figure out with Gannon how to not use the 
#         cipher hash.

7)  Which parts of the challenge did you find tedious?

#        None.
=end








 