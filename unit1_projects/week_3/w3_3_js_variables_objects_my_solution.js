// I paired [with: Ernie Salazar] on this challenge.


----------------Release 0------------------------------------------
// Test-Driven Development

// First Run my_solution.js and read error messages and hypothesize on what code needs to be written to fix them.
// 
//1.  ERROR: The value of secretNumber should be a number.
//		the variable secretNumber is assigned a value that is not a number.
//2.  ERROR: The value of secretNumber should be 7.
//		now the variable secretNumber is assigned a number, however the number should have been 7.
//3.  ERROR: The value of password should be a string.
//		the variable password exists, however it is not being assigned a string as its value.
//4.  ERROR: The value of password should be 'just open the door'.
//		yes, the variable password is assigned a string, however that string needs to be 'just open the door'
//5.  ERROR: The value of allowedIn should be a boolean.
//      the variable allowedIn is assigned a value, however this value is not a boolean.
//6.7.  members instanceof Array, ReferenceError: members is not defined
// 		create a variable named members that has a typeof as an array.
//8.  ERROR: The first element in the value of members should be 'John'.
//		replace first element of members with 'John'
//9.  ERROR: The fourth element in the value of members should be 'Mary'.
//      change the fourth element in the array members to be 'Mary'

----------------Release 1------------------------------------------

// Pseudocode
//1. Assign a number to the variable secretNumber.
//2. Variable secretNumber should be assigned the value 7.
//3. Variable password need to be assigned a string as a value.
//4. Variable password should be assigned the value of "just open the door"
//5. Assign a boolean to the variable allowedIn
//6. Create an array.
//7. The first element the array members needs to be 'John'

----------------Release 2------------------------------------------
// Initial Solution

// Write your code below.
var secretNumber = 10;
var secretNumber = 7;
var password = "Ernie";
var password = "just open the door";
var allowedIn = 77 > 88;
var members = [5,9,66,44];
members.unshift("John");
members[3] = "Mary";

----------------Release 3------------------------------------------
// Refactored Code: Include a refactored version (or justification of your original code) here. 

var secretNumber = 7;
var password = "just open the door";
var allowedIn = 77 > 88;
var members = ["John",9,66,"Mary"];

----------------Release 5------------------------------------------
// Reflection: Use the reflection guidelines to write a reflection here. 
// 
// Reflection Guidelines
// When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.
// 
// Remember, your reflections aren't just for teachers, they are for your fellow cohort mates as well, so be generous! You could end up helping a fellow student learn something new.
// 
// Answer the following questions (in addition to the challenge-specific questions) in your reflection:
// 
// 1.	What parts of your strategy worked? What problems did you face?
// 		I paired with another Boot.  This was an awesome experience.  He had already worked out the solutions with another Boot and therefore asked 	only guiding questions.  He did this in a way that allowed me to learn the most from the experience.  He was very good at stepping back and 	letting me process.  Great Job!

// 		I wanted to simply read the errors and kinda like a game figure out what they must telling me.  If I was told:

//			ERROR: The value of allowedIn should be a boolean.

// 	 	This must mean that the variable already exist, however the variable allowedIn is simply not set to a boolean data type.


// 2.	 What questions did you have while coding? What resources did you find to help you answer them?
//			I found it interesting that the test is written to fail and the method is to go through and make things work.  I feel like I need to 		reveiew and understand how the test is written to better grasp the idea and to get more out of the exercise.			

//3.	 What concepts are you having trouble with, or did you just figure something out? If so, what?
//			I really enjoyed this exercise.  I felt successful. I would still like a clearer understanding of TTDs are generated or designed.  

//4.	 Did you learn any new skills or tricks?
//			I feel like many skills of reading error messages and logic were reinforced.  I also learned unshift.  I like how it adds to the 			beginning of an array in JavaScript.

//5.	 How confident are you with each of the Learning Competencies?
//			Very confident at this level.  I see the logic behind the errors, but I am sure that as I progress there will be errors that I will 		need to look up.
//6.	 Which parts of the challenge did you enjoy?
//			I really enjoyed find the logic in the errors and using them to create a solution.  I also really thought that the refactoring was fun.  		I was fun to go through the lines of code and see the minimal amount needed to efficiently accomplish the task.

//7.	 Which parts of the challenge did you find tedious?
//	 		I really didn't find any part of this as tedious.

















