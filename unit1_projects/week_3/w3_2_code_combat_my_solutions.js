

// I worked on this challenge [by myself]
 
// For each mission, write the title as a comment. (Shown here). Also include pseudocode as a comment. 
// Note: to make commenting easier, you can highlight the section you want to comment and hold 
// command + / This will comment the line. 

 
// Reflection:
// Write your reflection here.

--------------------------Releases 1 & 2 -----------------------------------------------------

----------------------------#1 

//  1
// Name of Mission: Rescue Mission

// Pseudocode
// move down x2
// move right x1
// move up x2
// move right x2
// move down x1
// Attack

//  3
// Initial Solution
this.moveDown();
this.moveDown();
this.moveRight();

this.moveUp();
this.moveUp();
this.moveRight();
this.moveRight();
this.moveDown();
this.attackNearbyEnemy();

// 	4  
//	Successful Code
this.moveDown();
this.moveDown();
this.moveRight();

this.moveUp();
this.moveUp();
this.moveRight();
this.moveRight();
this.moveDown();
this.attackNearbyEnemy();

----------------------------#2

//  1
// Name of Mission:  Grab the Mushroom

//  2
// Pseudocode
// move up x1
// move right 1x
// move left 1x
// move up x1
// ATTACK!

//  3
// Initial Solution
this.moveUp();
this.moveRight();
this.moveLeft();
this.moveUp();

this.attackNearbyEnemy();

// 	4  
//	Successful Code
this.moveUp();
this.moveRight();
this.moveLeft();
this.moveUp();

this.attackNearbyEnemy();


----------------------------#3

//  1
// Name of Mission:  Drink Me

//  2
// Pseudocode
// ATTACK!
// move right x1
// move down 1x
// move up 1x
// move right x1
// ATTACK!

//  3
// Initial Solution
this.attackNearbyEnemy();
this.moveRight();
this.moveDown();
this.moveUp();
this.moveRight();
this.attackNearbyEnemy();

// 	4  
//	Successful Code
this.attackNearbyEnemy();
this.moveRight();
this.moveDown();
this.moveUp();
this.moveRight();
this.attackNearbyEnemy();

----------------------------#4 

//  1
// Name of Mission:  Taunt the Guards

//  2
// Pseudocode
// move right x1
// BUST DOWN DOOR
// move right x1
// Call to Ogre
// run move to the left x2
// turn and ATTACK!
// move right x1
// Call to Phoebe (FOLLOW ME)
// move right x2
// move up x1
// move to the right 
// Call to the Guards (develop chase)
// move down x1
// move right x1
// move up x1

//  3
// Initial Solution
this.moveRight();
this.bustDownDoor();
-------------------
this.moveRight();
this.say("Hey there!");
this.moveLeft();
this.moveLeft();
this.say("Attack!");

// Now get Phoebe to follow through the dungeon.
this.moveRight();
this.say("Follow me.");
this.moveRight();
this.moveRight();
this.moveUp();
this.moveRight();
this.say("Something");
this.moveDown();
this.moveRight();
this.moveUp();

// 	4  
//	Successful Code

this.moveRight();
this.bustDownDoor();
-------------------
this.moveRight();
this.say("Hey there!");
this.moveLeft();
this.moveLeft();
this.say("Attack!");

// Now get Phoebe to follow through the dungeon.
this.moveRight();
this.say("Follow me.");
this.moveRight();
this.moveRight();
this.moveUp();
this.moveRight();
this.say("Something");
this.moveDown();
this.moveRight();
this.moveUp();
this.moveRight();


----------------------------#5 

//  1
// Name of Mission:

//  2
// Pseudocode
// move down x2
// Say something
// move up x2


//  3
// Initial Solution
this.moveDown(2);
this.say("Hey, You");
this.moveUp(2);

//(I wanted to see what placing an argument into the parenthesis would accomplish.  
//	It didn't work.  I died!)

// 	4  
//	Successful Code
this.moveDown();
this.moveDown();
this.say("Hey, You");
this.moveUp();
this.moveUp();

----------------------------#6 

//  1
// Name of Mission: Taunt (the Orge)

//  2
// Pseudocode
// Say Insult #1
// Say Insult #1
// Say Insult #1
// Say Insult #1

//  3
// Initial Solution
this.say("You are a sticky mess of bones!");
this.say("How can your mother love such an ugly face!");
this.say("I am stronger than you!");
this.say("You are a smart Ogre, and that is not saying much!");


// 	4  
//	Successful Code

this.say("You are a sticky mess of bones!");
this.say("How can your mother love such an ugly face!");
this.say("I am stronger than you!");
this.say("You are a smart Ogre, and that is not saying much!");


----------------------------#7 

//  1
// Name of Mission: Cowardly Taunt

//  2
// Pseudocode
// move out in the open from your safe location, but one that the Ogres can see and hear
// Say Something
// run for a safe location

//  3
// Initial Solution

//in the open
this.moveXY(53,31);
//get their attention
this.say("Hey");
// safe location
this.moveXY(70,10);



// 	4  
//	Successful Code

//in the open
this.moveXY(53,31);
//get their attention
this.say("Hey");
//safe location
this.moveXY(70,10);


----------------------------#8

//  1
// Name of Mission:  Commanding Followers

//  2
// Pseudocode
// Say Follow Command
// move to a reasonable grid location XY
// Launch ATTACK!

//  3
// Initial Solution
this.moveXY(49, 66);
this.moveXY(60, 63);
this.moveXY(75, 63);
this.say("Hail, friends!");

// Saying anything with "follow" in it will get nearby soldiers
// to follow you

this.say("Follow me to Victory!");
this.moveXY(49,33);
this.say("Attack!");


// Saying anything with "attack" will send nearby troops into
// a battle mode.

// Make sure Tharin is safe!
// THARIN WAS NOT SAFE SO I CHANGED THE XY

// 	4  
//	Successful Code

this.moveXY(49, 66);
this.moveXY(60, 63);
this.moveXY(75, 63);
this.say("Hail, friends!");

// Saying anything with "follow" in it will get nearby soldiers
// to follow you

this.say("Follow me to Victory!");
this.moveXY(62,45);
this.say("Attack!");


----------------------------#9 

//  1
// Name of Mission: Mobile Artillery

//  2
// Pseudocode
// move artillery to a distance close enough from another group of ogres
// ATTACK(Make it Go Boom)!  --  Provide XY for target

//  3
// Initial Solution
this.moveXY(59,33);
this.attackXY(67,55);

// 	4  
//	Successful Code
this.moveXY(30, 26);  // Move into range
this.attackXY(46, 5);  // Shoot once in the middle of the ogres

// If they survive a hit, ogres retaliate!
// Larger ogres take more than one hit...
// So, position and aim carefully.
this.moveXY(59,33);
this.attackXY(69,54);
this.attackXY(66,49);
this.moveXY(54,42);
this.attackXY(49,67);
this.attackXY(50,58);

--------------------------Release 3 --------------------------------------------------------

// Release 3: Answer the following questions:
// 
//  What is this referring to? Think programming-wise rather than in the terms of the game.

//  this is a method "telling" the computer to perform the following operation(s) on a specific "object" you have clicked on -- Tharin or the Cannon.

// What does the () do in JavaScript?

// Basic syntax:
//                function functionname () {
//                  code that does something;
//}
//
//  The ()'s set up the proper syntax that indicates a function.  They create a "home/a place" where we can pass:
//                                             arguments, parameters, or variables that will be use by the function.


// What is the point of the semicolons?

//  The semicolon in JavaScript "tells" the computer that a particular line of code has ended and needs to be accomplished.

--------------------------Release 4 --------------------------------------------------------

// Reflection:


// Remember, your reflections aren't just for teachers, they are for your fellow cohort mates as well, so be generous! You could end up helping a fellow student learn something new.
// 
// Answer the following questions (in addition to the challenge-specific questions) in your reflection:
// 
// What parts of your strategy worked? What problems did you face?

// Most of the scenarios seemed pretty straight forward.  I liked that certain ideas were getting etched in my memory without me knowing.  It was fun.  I pretty quickly understood that the .thismoveRight();  moved Tharin to the right one space - as did the other "commands."  

//	I tried placing numbers in the parentheses to see if this could get Tharin to move multiple times.  It did not work.  I then questioned if the parentheses were empty, because either the move was fixed and arguements are not allowed, or there is some code being passed to each function in the parentheses, or the parentheses is simply syntax that is needed to designated to the computer that a function is being executed.

// Once Tharin got stuck and requested my help.  He had already accomplished the tasks.  This seemed to be a glitch.


// What questions did you have while coding? What resources did you find to help you answer them?
//	Again, the exercieses seemed pretty straight forward and fun.  I did have the test with inserting arguements unsuccessfully until asked to in later missions.  I reivewed Treehouse, W3Schools and CodeAcademy.  I think I also google proper syntax for functions in JavaScript.  All of these helped. 


// What concepts are you having trouble with, or did you just figure something out? If so, what?
//	I was not far enough away from the Large Ogres to hit them twice.  I had to try a couple of times.


// Did you learn any new skills or tricks?
//	I think that this assignment helped me improve my pseudocoding skills and cement the syntax for funtions.

// How confident are you with each of the Learning Competencies?
//	With the limited scope of this particular challenge, I fell very confident.  I look forward to more challenges.


// Which parts of the challenge did you enjoy?
//  I thought it was a clever way to teach some coding.  I am curious what other aspects of my brain were being improved through these exercises?


// Which parts of the challenge did you find tedious?
//	This specific pseudocoding seemed fine.  I find that if my pseudocoding was off and I thought I was correct, but wasn't, I had to watch Tharin go through all of his actions over and over again.  However, overall it was inspiring.  I found that I wanted to code even more and the music was great.










