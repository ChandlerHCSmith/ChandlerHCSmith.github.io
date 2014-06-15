// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [by myself]

/* -------  Error

1. true
2. true
3. true
4. true
5. false

/Users/ChandlerHCSmith/Desktop/my_solution.js:146
    throw "ERROR: " + message;
                    ^
ERROR: Louise should be elected President.

1. true
2. true
3. true
4. true
5. true
6. true
7. true
8. true

Success!!

*/


// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// -------------------------------------------------------------------

// Tally the votes in voteCount.

var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/

/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution

/*
var voteCount = {
  president: {"Bob": 0, "Mary": 0, "Cindy": 0, "Louise": 0, "Fred": 0, "Ivy": 0, "Nate": 0, "Oscar": 0, "Paulina": 0, "Tracy": 0, "Wesley": 0, "Steve": 0},
  vicePresident: {"Devin": 0, "Hermann": 0, "John": 0, "Alex": 0, "Kerry": 0, "Mary": 0, "Oscar": 0, "Nate": 0, "Bob": 0, "Steve": 0, "Yvonne": 0, "Zane": 0},
  secretary: {"Gail": 0, "Fred": 0, "Bob": 0, "Ivy": 0, "Mary": 0, "Nate": 0, "Devin": 0, "Oscar": 0, "Alex": 0, "Valorie": 0},
  treasurer: {"Kerry": 0, "Ivy": 0, "Bob": 0, "Fred": 0, "Gail": 0, "Tracy": 0, "Mary": 0, "Hermann": 0, "Xavier": 0}
}


Object.keys(votes).forEach(function(key) {
//  console.log(key);
  individual_votes = votes[key]

      vote_for_president = individual_votes.president
      vote_for_vicePresident = individual_votes.vicePresident
      vote_for_secretary = individual_votes.secretary
      vote_for_treasurer = individual_votes.treasurer


      voteCount.president[vote_for_president] = voteCount.president[vote_for_president] + 1
      voteCount.vicePresident[vote_for_vicePresident] = voteCount.vicePresident[vote_for_vicePresident] + 1
      voteCount.secretary[vote_for_secretary] = voteCount.secretary[vote_for_secretary] + 1
      voteCount.treasurer[vote_for_treasurer] = voteCount.treasurer[vote_for_treasurer] + 1


//      console.log(individual_votes);
//      console.log(vote_for_president);
//      console.log(vote_for_vicePresident);
//      console.log(vote_for_secretary);
//      console.log(vote_for_treasurer);
});

console.log("*********************************")

Object.keys(voteCount).forEach(function(key) {
//  console.log(key);
  office = voteCount[key]
//  console.log(office);
});

console.log("*********************************")

for(var key in voteCount){
    j = 1
    l = 0
    x = voteCount[key];
    console.log(x);
    y = key;
    console.log(key);

    var count_number = voteCount[key];
    for(var key in count_number){
          z = count_number[key];
          if (z >= l)
            {l = z
            name = key
            }
          else (z < l)
            {}
        }

          officers[y] = name
          console.log(l);
          console.log(name);
          console.log(officers[y]);
}
*/

// __________________________________________
// Refactored Solution

var voteCount = {
  president: {"Bob": 0, "Mary": 0, "Cindy": 0, "Louise": 0, "Fred": 0, "Ivy": 0, "Nate": 0, "Oscar": 0, "Paulina": 0, "Tracy": 0, "Wesley": 0, "Steve": 0},
  vicePresident: {"Devin": 0, "Hermann": 0, "John": 0, "Alex": 0, "Kerry": 0, "Mary": 0, "Oscar": 0, "Nate": 0, "Bob": 0, "Steve": 0, "Yvonne": 0, "Zane": 0},
  secretary: {"Gail": 0, "Fred": 0, "Bob": 0, "Ivy": 0, "Mary": 0, "Nate": 0, "Devin": 0, "Oscar": 0, "Alex": 0, "Valorie": 0},
  treasurer: {"Kerry": 0, "Ivy": 0, "Bob": 0, "Fred": 0, "Gail": 0, "Tracy": 0, "Mary": 0, "Hermann": 0, "Xavier": 0}
}

Object.keys(votes).forEach(function(key) {
  individual_votes = votes[key]
  voteCount.president[individual_votes.president] = voteCount.president[individual_votes.president] + 1
  voteCount.vicePresident[individual_votes.vicePresident] = voteCount.vicePresident[individual_votes.vicePresident] + 1
  voteCount.secretary[individual_votes.secretary] = voteCount.secretary[individual_votes.secretary] + 1
  voteCount.treasurer[individual_votes.treasurer] = voteCount.treasurer[individual_votes.treasurer] + 1
});

for(var key in voteCount){
    l = 0
    x = voteCount[key];
    y = key;

    var count_number = voteCount[key];
    for(var key in count_number){
          z = count_number[key];
          if (z >= l)
            {l = z
            name = key   //--- The name of the canidate with the greatest number of votes is recorded
            }
          else (z < l)
            {}
        }
        officers[y] = name;   //--- The name of winner is transferred to the list of officers
}

// __________________________________________
// Reflection
/*
How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

This assignment required the most work of all so far.  It idea is rather simple and in ruby I can see the solution quickly.
In JavaScript, it felt like I was learning JS all over again.  In some ways I was learning brand new skills and in some ways
I was mixing the thinking and syntax of Ruby together with my thinking of JS.     

2)  What questions did you have while coding? What resources did you find to help you answer them?

I had a haard time iterating in JS.  I looked at the two links provided, but I still struggled.    

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

I had trouble at first with placing a value into an object without the next insertion eliminating/overriding my first key/value.


4)  Did you learn any new skills or tricks?

I am much stronger on for(var __ in ____){} as an approach.  I also gained from the Object.keys(votes).forEach(function(key).

5)  How confident are you with each of the Learning Competencies?

I know that I learned a lot, however I would want to practice more.

6)  Which parts of the challenge did you enjoy?

Even in light of finding this challenge more difficult, I still really enjoy solving problems and come to a successful outcome.     

7)  Which parts of the challenge did you find tedious?

I would say, keeping track of the variables in the last for ... in .

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)