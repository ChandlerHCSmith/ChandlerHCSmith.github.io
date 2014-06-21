# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge [by myself].

# Errors:

=begin
FFFFFFFFFFFF

Failures:

  1) Rectangle#area is defined
     Failure/Error: Rectangle.method_defined?(:area).should be_true
       expected: true value
            got: false
     # ./rectangle_spec.rb:9:in `block (3 levels) in <top (required)>'

  2) Rectangle#area returns the correct area of a rectangle
     Failure/Error: rectangle.area.should eq 200
     NoMethodError:
       undefined method `area' for #<Rectangle:0x000001020cc8a0 @width=10, @height=20>
     # ./rectangle_spec.rb:13:in `block (3 levels) in <top (required)>'

  3) Rectangle#area returns the correct area of a square
     Failure/Error: square.area.should eq 400
     NoMethodError:
       undefined method `area' for #<Rectangle:0x000001020cb8d8 @width=20, @height=20>
     # ./rectangle_spec.rb:17:in `block (3 levels) in <top (required)>'

  4) Rectangle#perimeter is defined
     Failure/Error: Rectangle.method_defined?(:perimeter).should be_true
       expected: true value
            got: false
     # ./rectangle_spec.rb:23:in `block (3 levels) in <top (required)>'

  5) Rectangle#perimeter returns the correct perimeter of a rectangle
     Failure/Error: rectangle.perimeter.should eq 60
     NoMethodError:
       undefined method `perimeter' for #<Rectangle:0x000001020d07c0 @width=10, @height=20>
     # ./rectangle_spec.rb:27:in `block (3 levels) in <top (required)>'

  6) Rectangle#perimeter returns the correct perimeter of a square
     Failure/Error: square.perimeter.should eq 80
     NoMethodError:
       undefined method `perimeter' for #<Rectangle:0x000001020cea10 @width=20, @height=20>
     # ./rectangle_spec.rb:31:in `block (3 levels) in <top (required)>'

  7) Rectangle#diagonal is defined
     Failure/Error: Rectangle.method_defined?(:diagonal).should be_true
       expected: true value
            got: false
     # ./rectangle_spec.rb:37:in `block (3 levels) in <top (required)>'

  8) Rectangle#diagonal returns the correct diagonal of a rectangle
     Failure/Error: rectangle.diagonal.should eq 22.360679774997898
     NoMethodError:
       undefined method `diagonal' for #<Rectangle:0x000001020d4438 @width=10, @height=20>
     # ./rectangle_spec.rb:41:in `block (3 levels) in <top (required)>'

  9) Rectangle#diagonal returns the correct diagonal of a square
     Failure/Error: square.diagonal.should eq 28.284271247461902
     NoMethodError:
       undefined method `diagonal' for #<Rectangle:0x000001020d32e0 @width=20, @height=20>
     # ./rectangle_spec.rb:45:in `block (3 levels) in <top (required)>'

  10) Rectangle#square? is defined
     Failure/Error: Rectangle.method_defined?(:square?).should be_true
       expected: true value
            got: false
     # ./rectangle_spec.rb:51:in `block (3 levels) in <top (required)>'

  11) Rectangle#square? returns false for a rectangle
     Failure/Error: rectangle.square?.should be_false
     NoMethodError:
       undefined method `square?' for #<Rectangle:0x000001020d45a0 @width=10, @height=20>
     # ./rectangle_spec.rb:55:in `block (3 levels) in <top (required)>'

  12) Rectangle#square? returns true for a square
     Failure/Error: square.square?.should be_true
     NoMethodError:
       undefined method `square?' for #<Rectangle:0x000001020d2908 @width=20, @height=20>
     # ./rectangle_spec.rb:59:in `block (3 levels) in <top (required)>'

Finished in 0.01147 seconds
12 examples, 12 failures

Failed examples:

rspec ./rectangle_spec.rb:8 # Rectangle#area is defined
rspec ./rectangle_spec.rb:12 # Rectangle#area returns the correct area of a rectangle
rspec ./rectangle_spec.rb:16 # Rectangle#area returns the correct area of a square
rspec ./rectangle_spec.rb:22 # Rectangle#perimeter is defined
rspec ./rectangle_spec.rb:26 # Rectangle#perimeter returns the correct perimeter of a rectangle
rspec ./rectangle_spec.rb:30 # Rectangle#perimeter returns the correct perimeter of a square
rspec ./rectangle_spec.rb:36 # Rectangle#diagonal is defined
rspec ./rectangle_spec.rb:40 # Rectangle#diagonal returns the correct diagonal of a rectangle
rspec ./rectangle_spec.rb:44 # Rectangle#diagonal returns the correct diagonal of a square
rspec ./rectangle_spec.rb:50 # Rectangle#square? is defined
rspec ./rectangle_spec.rb:54 # Rectangle#square? returns false for a rectangle
rspec ./rectangle_spec.rb:58 # Rectangle#square? returns true for a square
=end


#  AFTER CODE IS MODIFIED

=begin
Finished in 0.00697 seconds
12 examples, 0 failures
=end

# 2. Pseudocode

#   Define class Rectangle
  #   Use attr_accessor :width, :height  (To establish what variables class Rectangle may accept)
  
  #  Define initialize which accepts both width and height
      #   Instantiate width and assign it the value of the width just passed.
      #   Instantiate height and assign it the value of the height just passed.
  #  End initialize method
  
  #  Define the area method
      #   Assign area the value of @width*@height
      #   return area
  #  End area method
  
  #  Define the perimeter method
		  #   Assign perimeter the value of 2*@width + 2*@height
		  #   return perimeter
	#  End perimeter method 

	#  Define the diagonal method
		  #   Assign the diagonal the value of Math.sqrt(@width**2 + @height**2)
		  #   return diagonal
	#  End diagonal method

	#  Define the square? method
		#   If @width == @height
		 	#   return true
      # Else
		 	  # return false
		#   End IF/Else control flow
  #  End square? method
# End class Rectangle

# 3. Initial Solution

=begin
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end
end
=end

=begin
class Rectangle
  attr_accessor :width, :height
  
	def initialize(width, height)
    @width  = width
    @height = height
	end

	def area
		area = @width*@height
    return area
	end

	def perimeter
		perimeter = 2*@width + 2*@height
		return perimeter
	end

	def diagonal
		diagonal = Math.sqrt(@width**2 + @height**2)
		return diagonal
	end

	def square?
		if @width == @height
		 	puts "This information represents a Square, a special case of a Rectangle."
		 	return true
		else
		 	puts "This information represents a Rectangle, but not a Square."
		 	return false
		end
	end
end
=end

# 4. Refactored Solution

#   NOTE: My Refactored and Initial Solution are almost exactly the same.  Look at the two puts in the square? method.  They are not necessary for the intended challenge RSPEC, but might be nice for the user.  Other puts might be nice as well, so the user knows what the information on the screen means.  In this case my Initial Solution was already "tight."

class Rectangle
  attr_accessor :width, :height
  
	def initialize(width, height)
    @width  = width
    @height = height
	end

	def area
		area = @width*@height
    return area
	end

	def perimeter
		perimeter = 2*@width + 2*@height
		return perimeter
	end

	def diagonal
		diagonal = Math.sqrt(@width**2 + @height**2)
		return diagonal
	end

	def square?
		if @width == @height
      puts "This information represents a Square, a special case of a Rectangle."
		 	return true
		else
      puts "This information represents a Rectangle, but not a Square."
		 	return false
		end
	end
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assert Failed!" unless yield
end

sh_1 = Rectangle.new(10,20)

assert { sh_1.area == 200 }
assert { sh_1.perimeter == 60 }
assert { sh_1.diagonal == 22.360679774997898 }
assert { sh_1.square? == false }

sh_2 = Rectangle.new(20,20)

assert { sh_2.area == 400 }
assert { sh_2.perimeter == 80 }
assert { sh_2.diagonal == 28.284271247461902 }
assert { sh_2.square? == true }


# 5. Reflection 

=begin
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

I was able to define the class, the instance variables, and the methods easily with this challenge.  My asserts as Driver Test went smoothly as well.

2)  What questions did you have while coding? What resources did you find to help you answer them?

I really didn't have any questions.  This went smoothly.  

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

This challenge came together quickly.  I do still have a question regarding, def ==(other).  I cannot decide what other is referring to.  I know from research that 
this is comparing geometric shapes to each to each other.  When I look at the structure of the code, it appears to already be assuming that the other is a 
square.  I was figured at the moment that we were assuming that they are rectangles to start with.  If this is true, then I only need to check if 
width == height.  If we are not assuming that they are rectangles, any rhombus fits the bill. 

4)  Did you learn any new skills or tricks?

This was more of a review or classes, instance variables, methods, calls, and asserts.      

5)  How confident are you with each of the Learning Competencies?

My confidence is high on this portion of our challenges.      

6)  Which parts of the challenge did you enjoy?

It went so quickly that I just simply enjoyed it.  I think it gave me a sense of ability, even though I know that it is not the most difficult material.      

7)  Which parts of the challenge did you find tedious?

It went so quickly that I did not have a chance to see any of it as tedious.
       
=end






