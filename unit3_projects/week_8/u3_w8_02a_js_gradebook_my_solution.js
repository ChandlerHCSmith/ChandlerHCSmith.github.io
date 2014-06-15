/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself]


# --------------------------- Errors ----------------------------------

#	Error #1

1. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:62
    throw "ERROR: " + message;
                    ^
ERROR: The value of average should be a Function.

# 	Error #2

1. true
2. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:82
    throw "ERROR: " + message;
                    ^
ERROR: average should return the average of the elements in the array argument.

#	Error #3

1. true
2
2. true

/Users/ChandlerHCSmith/Desktop/my_solution.js:116
  (gradebook instanceof Object),
   ^
ReferenceError: gradebook is not defined
    at Object.<anonymous> (/Users/ChandlerHCSmith/Desktop/my_solution.js:116:4)
    at Module._compile (module.js:456:26)
    at Object.Module._extensions..js (module.js:474:10)
    at Module.load (module.js:356:32)
    at Function.Module._load (module.js:312:12)
    at Function.Module.runMain (module.js:497:10)
    at startup (node.js:119:16)
    at node.js:906:3

# 	Error #4

1. true
2
2. true
3. true
4. true
5. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:121
    throw "ERROR: " + message;
                    ^
#	Error #5

1. true
2
2. true
3. true
4. true
5. true
6. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:137
    throw "ERROR: " + message;
                    ^
ERROR: The value of gradebook's addScore property should be a Function.

#	Error #6

1. true
2
2. true
3. true
4. true
5. true
6. true
7. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:152
    throw "ERROR: " + message;
                    ^
ERROR: Susan's testScores should have a new score of 80 added to the end.

#	Error #7

1. true
2
2. true
3. true
4. true
5. true
6. true
7. true
8. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:170
    throw "ERROR: " + message;
                    ^
ERROR: The value of gradebook's getAverage property should be a Function.

#	Error #8

1. true
2
2. true
3. true
4. true
5. true
6. true
7. true
8. true
9. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:187
    throw "ERROR: " + message;
                    ^
ERROR: gradebook's getAverage should return 80 if passed 'Jospeh'.

#	Error #9

1. true
2
2. true
3. true
4. true
5. true
6. true
7. true
8. true
80
9. true

*  They are all true!!!!

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.
//	Errors 1&2
var average = function(array){
	l = array.length
	sum = 0
	for(i = 0; i < l; i++)
	{sum = sum + array[i]
	 }
	 ave = sum/l
	 console.log(ave)
	 return ave
}

//	Error 3&4
var gradebook = {
	Joseph: {testScores: scores[0]},
	Susan: {testScores: scores[1]},
	William: {testScores: scores[2]},
	Elizabeth: {testScores: scores[3]},
	
	addScore: function(name, score){gradebook[name].testScores.push(score)},
	getAverage: function(name){
		testArray = gradebook[name].testScores
		sum = 0
		l = testArray.length
		for(i = 0; i < l; i++)
		{sum = sum + testArray[i]
		 }
		 ave = sum/l
		 console.log(ave)
		 return ave
	}
}


// __________________________________________
// Refactored Solution


//  My code is pretty clean.  
//  I have tried using .reduce without any luck.
//  I also found a .sum, which I expected, however it doesn't seem to be tons less code.  It is possibly more readible.
//  I will ask my cohorts.


// __________________________________________
// Reflect

/*
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

Using a for loop to sum the elements in the array worked well. "gradebook[name].testScores.push(score)" works well for adding scores.
I faced simply shifting gears and syntax.  I made notes and references to help and will review them over the next 2 weeks to get the major differences
cemented in my mind.      

2)  What questions did you have while coding? What resources did you find to help you answer them?

On release 4: testScores, I got hung up on the wording.  I like that it was not super specific, so I had to actually make guesses and try them.  Sometimes,
directions on all sites are very clear and add an element of guiding, which at first is really nice, but long range I won't learn as much.

I referenced:

http://www.codingforums.com/javascript-programming/218803-how-sum-elements-array.html
http://www.w3schools.com/js/js_array_methods.asp
http://www.allwebdevhelp.com/javascript/js-help-tutorials.php?i=8492
http://jsfromhell.com/array/sum     

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

Most of this lesson, was shifting gears and making JS alive again after weeks of other material.     

4)  Did you learn any new skills or tricks?

I have a much stronger command of Objects, properties, and functions in JS.    

5)  How confident are you with each of the Learning Competencies?

I would place myself at an 8.5.  I am pretty confident.  Why not a 10, you ask?  I need to working on combining steps and using off-the-shelf methods more
often instead of brute force      

6)  Which parts of the challenge did you enjoy?

I liked all of it!  I love the puzzle, the fitting it together.

7)  Which parts of the challenge did you find tedious?

I did not find any of this challenge tedious.  Not getting a more streamlined version is a bummer, but there is always tonight at 11:35pm.

*/


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)