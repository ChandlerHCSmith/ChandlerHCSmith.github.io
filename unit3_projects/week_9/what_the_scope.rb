# U3.W8-9: What the Scope


# I worked on this challenge [by myself].

# 1. What are the problems in the error messages?

#   I don't receive any errors initially.  Person isn't being instantiated and do_stuff isn't being called.
#   However, this challenge really intrigues me and therefore I am going to try to make it work.

#   To "see" what is happening, I will place puts of all variables at every "in between" place.

#   First, I will create a person_1 and make a instance of the Person class passing in two arguments since attr_reader
#         is written in such a way as to expect two arguments to be passed.
  
    #   Results:

            #   wts.rb:27:in `initialize': wrong number of arguments (2 for 1) (ArgumentError)
            #     from wts.rb:38:in `new'
            #     from wts.rb:38:in `<main>'
    #    This is what I would expect.  The initialize method takes only one argument and interestingly it is neither
    #         var_3 nor var_4.

    #       I will change it back to one argument.

#     Next, I passed only one variable.

    #   Results:

            #   wts.rb:199:in `block in do_stuff': undefined method `+' for nil:NilClass (NoMethodError)
    #  This would indicate that something doesn't have a value.  It would appear that var_9 has not been defined.

#     Next, define var_9 = 0.

    #   Results:

    #   The program runs.  However, it doesn't seem to be the most clear in its structure.  




# 2. Original Code

=begin
$var_1 = 22
 
class Person
  @@var_2
  VAR_6 = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end
=end

#   The way the program is initially written:

    #   $var_1 = 22 is a Global Variable and can be accessed anywhere within the program during runtime.  If the 
    #       program had more pieces, even other classes, all of them could "see" $var_1 = 22.

    #   @@var_2 is a class variable is shared by all instances of a class.  It is also shared by all the descendants 
    #     of the class and can be given different values throughout.

    #   VAR_6 = "Ruby" acts like a class variable and can be "seen" by all parts of the class and would be shared by
    #     all instances of the class.

    #   var_3 is read as a attribute and one might expect that it will be instantiated.  However, during the 
    #     initialization, it is not instantiated.  However, it is in the same location as var_5 and interestingly var_5 
    #     acquires the value of 782.  This is the value passed to var_5.  We would expect var_3 to be a class variable, 
    #     if instatiated.

    #   var_4 is never intialized due to the number of arguments passed to initialize.

    #   var_5 gets the value of var_3, but only inside the initialization, which makes sense.  It is acting as a local
    #     variable inside the initialize method.

    #   @var_3 = "Law of Demeter" is a class variable.

    #   var_7 = [1,2,3] is a local variable.


    #   var_8 is a local variable that obtains its value when .each is called on var_7.  It has the value of each
    #     element in the array one at a time.

    #   var_9 would be a local variable, however it is never defined.

=begin
puts "---1---"
puts $var_1       #  undefine or nil
#puts @@var_2     #  Always uninitialized class variable
#puts VAR_6       #  uninitialized constant
#puts var_3       #  undefined local variable or method
#puts var_4       #  undefined local variable or method
#puts var_5       #  undefined local variable or method
puts @var_3       #  undefine or nil
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---1---"


$var_1 = 22

puts "---2---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
#puts VAR_6       #  uninitialized constant
#puts var_3       #  undefined local variable or method
#puts var_4       #  undefined local variable or method
#puts var_5       #  undefined local variable or method
puts @var_3       #  undefine or nil
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---2---"
 
class Person
  @@var_2
  VAR_6 = "Ruby"


  puts "---3---"
puts $var_1       #  Always =to 22
# puts @@var_2    #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
#puts var_3       #  undefined local variable or method
#puts var_4       #  undefined local variable or method
#puts var_5       #  undefined local variable or method
puts @var_3       #  undefine or NilClass
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---3---"
 
  attr_reader :var_3, :var_4

  puts "---4---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
#puts var_3       #  undefined local variable or method   (It would appear that var_3 has been read by not initialized)
#puts var_4       #  undefined local variable or method   (It would appear that var_4 has been read by not initialized)
#puts var_5       #  undefined local variable or method
puts @var_3       #  undefine or nil
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---4---"
 
  def initialize(var_5 = VAR_6)
puts "---5---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
#puts var_3       #  undefine or nil
#puts var_4       #  undefine or nil
puts var_5        #  (1= 782,  the argument passed for var_3)
#puts @var_3      #  undefined or nil
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---5---"

    @var_3="Law of Demeter" 
   
puts "---6---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
puts var_3        #  (1= "Law of Demeter")
#puts var_4       #  undefine or nil
puts var_5        #  (1= 782, the argument passed for var_3)
puts @var_3       #  (1= "Law of Demeter", as we would expect.)
#puts var_7       #  undefined local variable or method
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---6---"

  end
 
  def do_stuff(var_7=[1,2,3])

    puts "---7---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
puts var_3        #  (1= "Law of Demeter")
puts var_4        #  undefine or nil
#puts var_5       #  undefined local variable or method
puts @var_3       #  (1= "Law of Demeter", as we would expect) 
puts var_7        #  Puts 1, 2, 3.  One per line.  As we would expect
#puts var_8       #  undefined local variable or method
#puts var_9       #  undefined local variable or method
puts "---7---"

  var_9 = 0

    var_7.each do |var_8|
      var_9 += var_8 + 2
    end

#   Next we find that something is wrong with var_9 += var_8 + 2 
#     Here is the error: in `block in do_stuff': undefined method `+' for nil:NilClass (NoMethodError)
#         I am replacing it with var_9 = var_8 + 2
#         I am also concerned with var_9 having never been defined.  I am defining var_9 before the var_7.each method

puts "---8---"
puts $var_1       #  Always =to 22
# puts @@var_2    #  Always uninitialized class variable
puts VAR_6        #  (Always =to "Ruby")
puts var_3        #  (1= "Law of Demeter")
#puts var_4        #  undefine or nil
#puts var_5       #  undefined local variable or method
puts @var_3       #  (1= "Law of Demeter", as we would expect) 
puts var_7        #  Puts 1, 2, 3.  One per line. As we would expect.
#puts var_8       #  undefined local variable or method.  At this point var_8 probably cannot be accessed. 
puts var_9        #  Outputs the sum of all the elements in var_7 + 2 extra per element.
puts "---8---"

  end
end

puts "---9---"
puts $var_1       #  Always =to 22
#puts @@var_2     #  Always uninitialized class variable
#puts VAR_6        #  uninitialized constant VAR_6
#puts var_3        #  undefined local variable or method
#puts var_4        #  undefined local variable or method 
#puts var_5        #  undefined local variable or method
#puts @var_3       #  undefine or nil 
#puts var_7        #  undefined local variable or method
#puts var_8        #  undefined local variable or method.
#puts var_9        #  undefined local variable or method.
puts "---9---"


#person_1 = Person.new(55, "only talk to your immediate friends.")
person_1 = Person.new(782)
person_1.do_stuff
=end

# 3. Modified Code (with scope identified as comments)
=begin
$var_1 = 22
 
class Person
  @@var_2
  VAR_6 = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end
=end

$var_1 = 22
 
class Client
  @@var_company = "The Trusted Smiths, INC"       #   Class Variable: Every instance/client will have our company 
                                                  #   name connected to their data.
 
  attr_reader :var_fn, :var_ln, :var_id, :var_inv, :var_rate, :var_yrs, :var_interest, :var_balance
 
  def initialize(var_fn, var_ln, var_id, var_inv, var_rate, var_yrs, var_interest, var_balance)  

                            #  These will all be class variables and seen by everything in the program.
    @var_fn = var_fn
    @var_ln = var_ln 
    @var_id = var_id
    @var_inv = var_inv
    @var_rate = var_rate
    @var_yrs = var_yrs
    @var_interest = var_interest
    @var_balance = var_balance
    @array_of_interest = []
  end

  def client_information
#    puts "Client's file number: #{@var_id}"
#    puts "Client's first name: #{var_fn}"
#    puts "Client's last name: #{var_ln}"
    var_inv.each do |var_individual|
#    puts "Client's investments, in USD: #{var_individual}"
    end
#    puts "rate: #{var_rate}"
#    puts "years: #{var_yrs}"
    return "Client's file number: #{@var_id}; Client's first name: #{var_fn}; Client's last name: #{var_ln}; rate: #{var_rate}; years: #{var_yrs}"



  end
 
  def calculate_interest
      @var_inv.each do |var_each_investment|
        @var_interest = var_each_investment*(var_rate/100)*var_yrs      # var_each_investment is local and is lost 
#        puts @var_interest                                   # when this method finishes.
        @array_of_interest << @var_interest
      end

#      print @array_of_interest
      return @array_of_interest
  end
end




client_1 = Client.new("Sue", "Wenora", 4443298123, [10000,20000,50000], 4.5, 4, 0, 0)
#client_1.client_information
#client_1.calculate_interest

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "Assert Failed" unless yield
  puts "True!"
end

assert {client_1.calculate_interest == [1800.0, 3600.0, 9000.0]}
assert {client_1.client_information == "Client's file number: 4443298123; Client's first name: Sue; Client's last name: Wenora; rate: 4.5; years: 4"}


# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

#   I know that it is overkill, but placing all of the puts statements allows one to study the output at each stage 
#         in the program. Most of the results were expected.  I am still not completely sure of why @var_3 = "Law of Demeter"
#         changed the value of var_3 from this point on.  I tried creating other similar examples like @var_5, but was not 
#         clear that I was seeing the pattern.

2)  What questions did you have while coding? What resources did you find to help you answer them?

#    I wanted to know, but never found supporting documentation whether you can even do (var_5 = VAR_6).  I was 
#         wondering if this is one of those times when what makes sense is not allowed.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

#    Overall the challenge made sense.  I did not receive any immediate errors until I created a person and called
#       do_stuff.  It is not clear that the program has any reall point/application.

4)  Did you learn any new skills or tricks?

#    I felt like this challenge was very useful in clarifing and reminding me of Global, Call, Instance, and Local Variables.

5)  How confident are you with each of the Learning Competencies?

#    I feel confident, however, I am not sure if I took too much liberty, but I really wanted to play with this one.   

6)  Which parts of the challenge did you enjoy?

#    Grasping scope and testing.  

7)  Which parts of the challenge did you find tedious?

#    Testing was tedious, but I enjoyed it.  Maybe that's not tedious then, just time consuming.   
=end





