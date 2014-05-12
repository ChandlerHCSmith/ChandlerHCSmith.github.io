Hi Chandler —

Patrick and I paired up to do the next phase of the group challenge. Here’s our resulting code.
We’ve left ernie’s pseudo code in the comments.

I’m pasting the raw JS in this email, but here’s a link to a stypi file as well (maybe easier to deal with since it will have syntax highlighting.)
http://code.stypi.com/gannoncurran/Recently%20viewed/P0_U1_W3_%236_groupchallenge_js_code

Have fun!

Gannon


________________
// U1.W3.6 Group Project - Pseudocode


// 	variable sum is a function (with a parameter of an array){
// 		variable total is set to zero;
// 		for (index starts at 0, until you reach the length of an array, increment index by one) {
// 		total is equal to total plus the array[index];
// 		};
// 		return the total;
// 	};

var sum = function(array) {
  var totalSum = 0;
  for (index = 0; index < array.length; index++) {
    totalSum += array[index];
  };
  return totalSum;
};

//--------------------REFACTORED AND USER STORY-----------------------------------------------------------------------------

//  //  I don't see any refactoring to be done.  Great job!
//  //  Slight Syntax error in the for (i,(;) i < array.length,(;) index++) now fixed, the ;'s use to be ,'s.

//  //  User Story:
//  //              The user has a group of numbers that are stored in what the computer calls an array, a storage container.
//  //              The user wants all of these numbers to be added together.


//  //  Possible concerns having not looked at the rest of the assignment as implied:

//  What happens when the array is a mixed array and contains data other than numbers?

//----------------------------DONE---------------------------------------------------------------------

// 	variable mean is a function (with a parameter of an array){
// 		variable total is set to zero;
// 		for (index starts at 0, until you reach the length of an array, increment index by one) {
// 		total is equal to total plus the array[index];
// 		};
// 		total is equal to total divided by the length of an array;
// 		return the total;
// 	};

var mean = function ( array ){
  var totalSum = 0;
  var mean = 0;
  
  for( index = 0; index < array.length; index++ ){
    totalSum += array[index];
  };
  
  mean = totalSum / array.length;
  return mean;
};

//--------------------REFACTORED AND USER STORY-----------------------------------------------------------------------------

//  //  I don't see any refactoring to be done.  Great job!
//  //  Slight Syntax error in the for (i,(;) i < array.length,(;) index++) now fixed, the ;'s use to be ,'s.

//  //  User Story
//  //              The user has a group of numbers that are stored in what the computer calls an array, a storage container.
//  //              The user wants to find the average/mean of all of these numbers.

//  //  Possible concerns having not looked at the rest of the assignment as implied.

//  What happens when the array is a mixed array and contains data other than numbers?

//----------------------------DONE---------------------------------------------------------------------


// Refactored option to reuse the work done in the sum function defined above
// var mean = function ( array ){
//   var mean = 0;
  
//   mean = sum( array ) / array.length;
//   return mean;
// };


// 	variable median is a function (with a parameter of an array){
//  	Use dot notation to sort the array with ( a function(high, low) {return high - low})
//   	variable midpoint is equal to Math.floor(length of array divided by 2);
//   	if ((length of array modulus 2) is equal to 1)
//     		return the array[midpoint];
//   	else
//     		return the ((array[midpoint minus 1] plus array[midpoint]) divided by 2);
// 	};

var median = function(array) {
  array.sort(high, low) { return high - low };
  var midpoint = Math.floor(array.length / 2);
  if ((array.length % 2) === 1) {
    return array[midpoint];
  }
  else {
    return ((array[midpoint - 1] + array[midpoint]) / 2)
  };
};


---------



/*  New Option  */
/*  Wrong index starts at zero.  I knew this, but still slipped.

var median = function(array) {
  array.sort(high, low) { return high - low };
  var midpoint = Math.ceil(array.length / 2);
  if ((array.length % 2) === 1) {
    return array[midpoint];
  }
  else {
    return ((array[midpoint] + array[midpoint+1]) / 2)
  };
};


//--------------------REFACTORED AND USER STORY-----------------------------------------------------------------------------

//  //  I don't see any refactoring to be done.  Great job!

//  //  User Story
//  //              The user has a group of numbers that are stored in what the computer calls an array, a storage container.
//  //              The user wants to find the median.

//  //  Possible concerns having not looked at the rest of the assignment as implied.

//  What happens when the array is a mixed array and contains data other than numbers?

//  //  Also I have added New Option.
//  //    I Think that the use of floor generates the incorrect answer:


//  Example:

//  Odd array with 15 elements:   1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
//  I believe this array has a length of 15.
//  If the length is taken the answer is 7.5.
//  If the floor is taken then median = 7.
//  If the array[median] is returned, I believe that this would be 7.
//  The median should be 8.

//  Please review and let me know.


//----------------------------DONE---------------------------------------------------------------------


