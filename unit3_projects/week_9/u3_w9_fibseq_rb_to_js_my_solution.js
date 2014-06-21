// U3.W8-9: Challenge you're converting


// I worked on this challenge [by myself].

// Original code in RUBY:

/*
def is_fibonacci?(number)
    fib_seq = [0,1]
  for num in 0..125
     l = fib_seq.length
     fib_seq << fib_seq[l-2] + fib_seq[l-1]
  end
  b = fib_seq.include?(number)
  return b
end
*/

// 2. Pseudocode

/*
	Define a var named is_fib_num and assign it the value of a function which accepts number as an argument
		Assign fib_seq the beginning array of [0,1]

		For(i= 0; i < number_of_terms_desired; i ++){
			Assign next_term = fib_seq[i] + fib_seq[i + 1]    (This generates the fibonacci sequence)
			}

		For(i= 0; i < number_of_terms_desired; i ++){
			Assign fib_term = to fib_seq[i]

    		If (fib_term == the number passed to the function is_fib_num)
    			{console.log("Yes, " + number + " is a term in the fibonacci sequence.")}
    		else
    			{console.log("No, " + number + " is not a term in the fibonacci sequence.")}

    		}

	   }

//  This solution returns answers for every comparison between passed number and fibonacci sequence elements.

//	So I modified it to:	

	Define a var named is_fib_num and assign it the value of a function which accepts number as an argument
		Assign fib_seq the beginning array of [0,1]

		For(i= 0; i < number_of_terms_desired; i ++){
			Assign next_term = fib_seq[i] + fib_seq[i + 1]    (This generates the fibonacci sequence)
			}

		For(i= 0; i < number_of_terms_desired; i ++){
			Assign fib_term = to fib_seq[i]

    		If (fib_term == the number passed to the function is_fib_num)
    			{console.log("Yes, " + number + " is a term in the fibonacci sequence.")}
    		else
    			{}

    		}

	   }

//  But before running it I realized that this would let me know if the passed number was one of the fibonacci sequence
		elements, but what not deliver an absolute NO.

//  So I modified it to the code you see in the Initial Solution.  This code provides a Yes or a No based on a boolean
		value.  This boolean looks at n = 1, which represent that the number is not a member.  It is not planned for 
		this value to change.  The boolean also looks at y = 0, which represents that the number passed is not a member.
		However, if the number passed is found to be one of the elements, then y is reassigned the value 1.
	A final if/else using boolean logic and whether these values changed, implies the number passed is a member of 
		the fibonacci sequence, or if the values stayed the same, which implies the number passed was never found to be
		in the set of fibonacci numbers.

	This now allows a yes/true to be console.log'd or return'd.
	This now allows a no/false to be console.log'd or return'd.

*/


// 3. Initial Solution

var is_fib_num = function(number) {
    fib_seq = [0,1]
    y = 0
    n = 1
    	for(i = 0; i < 125; i ++){
    		next_term = fib_seq[i] + fib_seq[i + 1]
    		fib_seq.push(next_term);
    		}
    	for(i = 0; i < 125; i ++){
    		fib_term = fib_seq[i]
    		if (fib_term == number)
    			{y = 1;}
    		else
    			{}
    		}
        if (y == 1 && n == 1)
//            {console.log("Yes, " + number + " is a term in the fibonacci sequence.");
            {return true}     
        else 
//            {console.log("No, " + number + " is not a term in the fibonacci sequence.");
            {return false}
    }


// 4. Refactored Solution

//  I only see a minor change to refactor.  The JavaScript is much longer than the original Ruby.  This is mostly the 
//		result of RUBY having the nice include? method.
//		The console.logs in the concluding if/else are there to provide output in the terminal.



// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE


var assert = function(boolean_value) {
	if (boolean_value){
		console.log("True!");
		return true;
	}
	else {
		console.log("False!");
		return false;
	}
}

assert(is_fib_num(13) == true);
assert(is_fib_num(14) == true);
assert(is_fib_num(927372692193079200000) == true);
assert(is_fib_num(927372692193078999171) == true);


// 5. Reflection 
/*
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

Using proper naming of variables in JS.  Using correct function notation in JS.  converting the for num 0..l loop in Ruby
into a for(i = 0; i < x; i ++) loop.  Using .push to place new information into the array.  Using a js for(i = 0; i < x; i ++)
combined with an if/else to create a change if a number is in the fibonacci sequence just generated.  Using a boolean 
to detect if a change occurred and the number is truly in the fibonacci sequence.  This last step allows for a return of 
true, as well as, a return of false.

Now, that I have thought about it more while answering this question, It seems that there should be a way to "break"
out of the r(i = 0; i < x; i ++) loop if the comparator every proves to be true.  I thought of yield, but this does not
seem to do the trick.  I have done some research, but without success.  I will have to think about this more.

2)  What questions did you have while coding? What resources did you find to help you answer them?

I very few questions, if any, because I had created a cheatsheet for JS during the "gradebook exercise" in Week 8.

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

Condensing lines 92 to 105.  They are roughly checking for the same things.

4)  Did you learn any new skills or tricks?

Didn't really learn any new skills or tricks, however I feel like I really sharpened some understanding of both 
JS and RUBY.  

5)  How confident are you with each of the Learning Competencies?

I would mark myself at an 9 or 10, other than the bothersome feeling that lines 92 through 105 can be condensed.     

6)  Which parts of the challenge did you enjoy?

I enjoyed translating and seeing both systems working at the same time and somewhat separating the two more clearly.      

7)  Which parts of the challenge did you find tedious?

I did not find any of the challenge tedious.
       
*/









