

//--------------Release 0------------------------------------------
//Design Your Mission

//	Imagine the screen graphics are already designed.  
//  	There are patches of forest on the far right upper and lower corners of the screen.
//		There is a open plain on which rests a castle.
//		Tharin and his band must take the castle to control the region.
//		For this to happen, the following must happen first:

//1&2.		1)	Tharin must rally his men.
//			2)	Tharin must order the trebuchet to be put in position, when striking distance of the castle's wall.
//			3)	The Trebuchet's payload must strike the castle wall 5 times in the same location to create a breach.
//			4)	Once the breach occurs Tharin needs to lead his men in a Charge to flood the breach.

//			This would be considered success for this level.

//		I.  We will need Tharin, his band, the trebuchet, and a castle wall.
//        		Tharin and his band need to be able to move.
//				Tharin needs to be able to rally his men.
//				The trebuchet needs to be able to be positioned.
//				The trebuchet needs to be able to fire.
//				The wall needs to be able to record demage.
//				The wall needs to be able to change to a breach.
//				Tharin needs to be able to call to his band to Charge and flood the breach.

//3.	The word in code, "this", refers to an object, its properties, and their associated values (Id, Health, Position, and Allegiance)
//
//


//Objects needed:

//We will need a leader, 6 members of his band, a trebuchet, a payload, and a castle-wall



//	I am assuming that the abilities from Code Combat of the actual move, of the actual flying ordnance
//		is given to me along with all the rest of the code.  Open Source is nice...  :)


//4.	Methods needed:

//			move (Allows Objects to move)
//			say	(Allows the leader to communicate with his band)
//			releaseFury (This releases the payload of the Trebuchet)

/*


//--------------Release 1------------------------------------------
//	Pseudocode - This is more a narative because the code that allows these items to accomplish their tasks is not present.

-determine where Tharin's band is located using the location finder.
-click on Tharin
-move Tharin to his band using these coordinate, (they are waiting near the far left of the screen behind a hill with the trebuchet
-rally the band "Hail, friends!"
-click on the trebuchet
-using the location finder determine the location of the wall
-using the location finder determine a safe yet effective distance from the wall
-move the trebuchet to a this distance from the wall
-click on Tharin
-command the band to "Follow me."
-using the location finder determine a location within 12 of the trebuchet.
-click on Tharin.
-move to this position close to the trebuchet, the band will follow.
-click on the trebuchet
-releaseFury is called 5 times
-click on Tharin
-inspire the band to "Fill the Gap"
-Tharin and band move to the gap

*/
//	Pseudocode - Objects
/*
leader Object defined
		id property and name as value
		health property and an initial health value
		locaction property and vector value/property 
				x property with grid value
				y property with grid value
		allegiance property and value

band Object defined
		id property and name of individual as value
		health property and an initial health value
		locaction property and vector value/property 
				x property with grid value
				y property with grid value
		allegiance property and value


weapon Object defined
		id property and name of weapon as value
		health property and an initial health value
		locaction property and vector value/property 
				x property with grid value
				y property with grid value
		allegiance property and value

payload Object defined
		id property and name of ordance as value
		its ability to inflect damage property and a value
		locaction property and vector value/property 
				x property with grid value less than weapon object by a given # of grid units
				y property with grid value less than weapon object by a given # of grid units
		allegiance property and value


castle_wall Object defined
		id property and name of wall as value
		strength property and an initial strength value
		locaction property and vector value/property 
				x property with grid value
				y property with grid value  [Foreseen difficult of creating a wall instead of a single location]
		allegiance property and value


*/



//--------------Release 2------------------------------------------
//	Write your initial code

//	Code for objects:

var leader = {
	id: "Tharin",
	health: 20,
	location: vector = {
							x: 10,
							y: 10
						} 
	allegiance: "Umanian"
}

var band_1 = {
	id: "Bearnas",
	health: 20,
	location: vector = {
							x: 10,
							y: 50
						} 
	allegiance: "Umanian"
}

var band_2 = {
	id: "Ailig",
	health: 20,
	location: vector = {
							x: 14,
							y: 57
						} 
	allegiance: "Umanian"
}


var band_3 = {
	id: "Calum",
	health: 20,
	location: vector = {
							x: 12,
							y: 47
						} 
	allegiance: "Umanian"
}

var band_4 = {
	id: "Faolan",
	health: 20,
	location: vector = {
							x: 15,
							y: 62
						} 
	allegiance: "Umanian"
}

var band_5 = {
	id: "Marcas",
	health: 20,
	location: vector = {
							x: 12,
							y: 42
						} 
	allegiance: "Umanian"
}

var band_6 = {
	id: "Seathan",
	health: 20,
	location: vector = {
							x: 15,
							y: 47
						} 
	allegiance: "Umanian"
}

var weapon = {
	id: "Trebuchet",
	health: 50,
	location: vector = {
							x: 22,
							y: 58
						} 
	allegiance: "Umanian"
}

var ordnance = {
	id: "PayLoad",
	damage: 50,
	location: vector = {
							x: Trebuchet - 4,
							y: Trebuchet - 4
						}
}

var castle_wall = {
	id: "Wall",
	strength: 250,
	location: vector = {
							x: 100,
							y: [60..85]
						} 
	allegiance: "Tribian"
}

//	Code for methods:

moveXY(x,y)
say()
releaseFuryXY(x,y)

// Code for the mission:

//-determine where Tharin's band is located using the location finder.

//-click on Tharin
//-move Tharin to his band using these coordinate, (they are waiting near the far left of the screen behind a hill with the trebuchet
this.moveXY(10,61);
//-rally the band "Hail, friends!"
this.say("Hail, friends!");
//-click on the trebuchet
//-using the location finder determine the location of the wall
//-using the location finder determine a safe yet effective distance from the wall
//-move the trebuchet to a this distance from the wall
this.moveXY(75,75);
//-click on Tharin
//-command the band to "Follow me."
this.say("Follow me.");
//-using the location finder determine a location within 12 of the trebuchet.
//-click on Tharin.
//-move to this position close to the trebuchet, the band will follow.
this.moveXY(75,64);
//-click on the trebuchet
//-releaseFury is called 5 times
this.relaseFuryXY(100,75);
//-click on Tharin
//-inspire the band to "Fill the Gap!"
this.say("Fill the Gap!");
//-Tharin and band move to the gap
this.moveXY(x,y);



//--------------Release 2.1------------------------------------------
//	Write your initial code (To show that I understand the learning competencies of this section, since I 
//	went the direction of a more direct Code Combat example.)

//Define local variables in JavaScript

// Here is an empty object named leader
var leader = {};
// To add a property
leader.id = "Tharin";
// To change the value of a property
castle_wall.strength = castle_wall.strength - 50;
// To access values.
var strength = castle_wall.strength;
console.log(strength);
//  To access the value and change it external to the Object, but not change the value in the Object.
var strength = castle_wall.strength - 50;
console.log(strength);
// Of course to write a program that determines when the wall comes down only needs to check the value of the wall's
//	strength after each turn.  An If Else if would work nicely for this.  Something like:
If (castle_wall.strength >0){
// No change to the image of the wall.
}
Else if {
// Some code that changes the images or runs a sequence of images to simulate the collapse of the wall
};
// To delete a property.  Maybe at a certain point in the game accomplishing tasks gains the character abilities
//  or not accomplishing tasks, or time causes the character to loose an ability.
//	Possibly the leader has lost the ability to muster the band.
delete leader.muster;
// Determine movement
//  This will all be done by changing the x, y, and maybe z coordinates.
//  We have already seen how to change a value to a property of an Object.  The difficulty.  What I don't
//	know is how to create motion.  How to cause the image to change location.  Also how to sample input, via 
//	keyboard pushes, or joysticks, or tilting the device.
//  Once I had that "connnection," the code would look something like:

if ("input indicates right"){
	leader.location.vector.x = leader.location.vector.x (+or-, depending on our system) a certain amount
}


//--------------Release 3------------------------------------------
//		Refactor:

//	For my Code Combat code there is nothing to refactor.
//	I am wondering if there might be a way of calling the band code to create all of the characters while the game is in play.  This would cut down on code some.


//----------------Release 4------------------------------------------
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
// 			I really wanted to make something that involved the Code Combat style.  So to do this I assumed that 
//				I had many of the really cool stealthy code from the site and built an operation around this.  I think
//				that creating a reasonable challenge and following the logic went well. 


// 2.	 What questions did you have while coding? What resources did you find to help you answer them?
//			How does the computer look for input from various devices.  How does the wall know that the payload
//				has struck.  I can think of a few ways that math is utilized, but not sure.


// 3.	 What concepts are you having trouble with, or did you just figure something out? If so, what?
//			I really need to know how the computer looks for input fro various devices.  With this knowledge, 
//				I am fairly confident that I could piece together the way movement is accomplished.  I also need 
//				to know how images are rendered to the screen.

// 4.	 Did you learn any new skills or tricks?
//			 I like the idea of changing the value of a property of an Object either premanently or simply
//				accessing this information.

// 5.	 How confident are you with each of the Learning Competencies?
//			I feel confident, however I know that I need repetition to solidify.
//			
// 6.	 Which parts of the challenge did you enjoy?
//			I enjoyed telling the story and coming up with a scenario.  I also spoke to my Peer-Pairing Teammate
//				about this assignment and really look forward to knowing more. 

// 7.	 Which parts of the challenge did you find tedious?
//	 		I don't know that I found any parts particularly tedious.



