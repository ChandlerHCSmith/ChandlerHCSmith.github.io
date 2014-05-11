// This is a Solo Challenge. 

// There is a section below where you will write your code.
// Do not alter this object here.


var terah = {
  name: "Terah",
  age: 32,
  height: 66,
  weight: 130,
  hairColor: "brown",
  eyeColor: "brown"
}

//----------------Release 0------------------------------------------
// Test-Driven Development

// Test-Driven Development

// First Run my_solution.js and read error messages and hypothesize on what code needs to be written to fix them.
// 
//1.  ReferenceError: adam is not defined
//2.  ERROR: The value of the adam name property should be 'Adam'.
//3.  ERROR: terah should have a spouse property with the value of the variable adam.
//4.  ERROR: The terah weight property should be 125.
//5.  ERROR: The terah eyeColor property should be removed.
//6.  ERROR: The terah spouse property's value spouse property should be terah.
//7.  ERROR: The value of the terah children property should be an Object.
//7-8 TypeError: Cannot read property 'name' of undefined.
//8-9 TypeError: Cannot read property 'name' of undefined.
//9-10 TypeError: Cannot read property 'name' of undefined.
//11  ERROR: The value of the adam children property should be the value of the terah children property



//----------------Release 1------------------------------------------

/* Pseudocode Section - write pseudocode for each challenge below.

1. Define a variable adam and use object literal notation to assign this variable 
   the value of a JavaScript Object object with no properties.
//Assign variable adam an empty literal object

2. Give adam a name property with the value "Adam".
//Add name property with value 'Adam' to the adam object

3. Add a spouse property to terah and assign it the value of adam.
//Add spouse property with value adam to the terah object

4. Change the value of the terah weight property to 125.
//Assign the terah object weight property a value of 125

5. Remove the eyeColor property from terah.
//Delete the eyeColor property from the terah object

6. Add a spouse property to adam and assign it the value of terah.
//Add spouse property with a value of terah to the adam object

7. Add a children property to terah and and use object literal notation to assign 
   this variable the value of a JavaScript Object object with no properties
//Add a children property
//Assign the children property the value of an empty object

8. Add a carson property to the value of the terah children property and assign it 
  the value of an object with the property name with a value of "Carson".
//Add a carson property to terah-children property
//Assign the carson property an object
//This object needs to contain the property name and value "Carson"

9. Add a carter property to the value of the terah children property and assign it 
   the value of an object with the property name with a value of "Carter".
//Add a carson property to terah-children property
//Assign the carter property an object
//This object needs to contain the property name and value "Carter"

10. Add a colton property to the value of the terah children property and assign it 
    the value of an object with the property name with a value of "Colton".
//Add a carson property to terah-children property
//Assign the colton property an object
//This object needs to contain the property name and value "Colton"

11. Add a children property to adam and assign it the value of terah children.
//Add a children property to the adam object
//Assign the adam-children property the terah-children value


*/

//----------------Release 2------------------------------------------
// Initial Solution

// Write your code below.

var adam = {};
adam.name = 'Adam';
terah.spouse = adam;
terah.weight = 125;
delete terah.eyeColor;
adam.spouse = terah;
terah.children = {};
terah.children.carson = {name: "Carson"};
terah.children.carter = {name: "Carter"};
terah.children.colton = {name: "Colton"};
adam.children = terah.children;





//----------------Release 3------------------------------------------
// Reflection: Use the reflection guidelines
// 

//  Here is the Final Outcome from the Terminal

/* 
1. true
2. true
3. true
4. true
5. true
6. true
7. true
8. true
9. true
10. true
11. true

Here is your final terah object:
{ name: 'Terah',
  age: 32,
  height: 66,
  weight: 125,
  hairColor: 'brown',
  spouse: 
   { name: 'Adam',
     spouse: [Circular],
     children: { carson: [Object], carter: [Object], colton: [Object] } },
  children: 
   { carson: { name: 'Carson' },
     carter: { name: 'Carter' },
     colton: { name: 'Colton' } } }
*/
// 


/*
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1.  What parts of your strategy worked? What problems did you face?
      I took a line-by-line approach and used much of my thinking from pairing.  I thought of what these Objects were and what I was creating from 
        a conceptional dimension, not just what code produces this effect, but rather what is really happening.  I struggled with the 
        pseudocoding.  I think that it would really help me to see my pseudocode corrected.  These tasks seemed easy enough (noncomplex/not multiply pieces), that the prompt
        almost felt like it was the pseudocode.  I made modifications for the pseudocode and tried to show my code thinking not just a 
        narrative of what was to be accomplished.

      I did look over 3-4 pseudocoding explanations on the web.  However, they usually seemed designed for multi-step processes.


2.  What questions did you have while coding? What resources did you find to help you answer them?
      I had to look up how to remove an element from a JavaScript Object literal.  
      I looked at Stackoverflow.


3.  What concepts are you having trouble with, or did you just figure something out? If so, what?
      I need to work through with someone and spend some more time on individual research on the subject of pseudocoding.
      The concept doesn't completely evade me, I just don't feel settled.

4.  Did you learn any new skills or tricks?
      I learned the delete method.
      I also liked thinking that a value to one property can itsefl have properities and values and so on.  Interesting.


5.  How confident are you with each of the Learning Competencies?
      I feel pretty confident about the TTD idea and how to produce "trues" when they are "false."  I feel like a need a tweak 
      on the pseudocoding that would take me from where I am several levels up.  I will also talk to my group about this.


6.  Which parts of the challenge did you enjoy?
      I liked figuring what to do by reading the error messages and getting the "true" statements.
      Again, I like the values having properties that have values idea.
      I like the pseudocoding, I just don't feel sure that I am doing it correctly.  I think that I am already 
      doing it, just not in as much of a formal way and from the past I know that these differences can accelerate
      me from one level of performance to another.

7.  Which parts of the challenge did you find tedious?
      I really didn't find any of this challenge tedious.

*/



// 
// 


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
  (adam instanceof Object),
  "The value of adam should be an Object.",
  "1. "
)

assert(
  (adam.name === "Adam"),
  "The value of the adam name property should be 'Adam'.",
  "2. "
)

assert(
  terah.spouse === adam,
  "terah should have a spouse property with the value of the variable adam.",
  "3. "
)

assert(
  terah.weight === 125,
  "The terah weight property should be 125.",
  "4. "
)

assert(
  terah.eyeColor === undefined,
  "The terah eyeColor property should be removed.",
  "5. "
)

assert(
  terah.spouse.spouse === terah,
  "The terah spouse property's value spouse property should be terah.",
  "6. "
)

assert(
  (terah.children instanceof Object),
  "The value of the terah children property should be an Object.",
  "7. "
)

assert(
  terah.children.carson.name === "Carson",
  "The terah children property should have a carson property with its own property name with a value of 'Carson'.",
  "8. "
)

assert(
  terah.children.carter.name === "Carter",
  "The terah children property should have a carter property with its own property name with a value of 'Carter'.",
  "9. "
)

assert(
  terah.children.colton.name === "Colton",
  "The terah children property should have a colton property with its own property name with a value of 'Colton'.",
  "10. "
)

assert(
  adam.children === terah.children,
  "The value of the adam children property should be the value of the terah children property",
  "11. "
)

console.log("\nHere is your final terah object:")
console.log(terah)





