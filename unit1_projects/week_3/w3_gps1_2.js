//  GPS 1_2


var blankspace = "";

var client1= {};

var client2= {};

var client3= {};

var client4= {};

var client5= {};

client1.name="Morgan"
client1.age=21
client1.quote="We'll meet again in another life when we are both dogs."

client2.name= "Chandler"
client2.age=37
client2.quote="An uninspected life is not worth living."

client3.name = "Adam Sandler"
client3.age = 47
client3.quote ="That's your home! Are you too good for your home?!"

client4.name= "Kristen Bell"
client4.age=33
client4.quote="Do you wanna build a snowman?"

client5.name = "Jim Carrey"
client5.age = 52
client5.quote = "...So you're telling me there's a chance? YEAH!"

var Client = function(name, age, quote,trending_rating){
  this.name=name;
  this.age=age;
  this.quote=quote;
  this.trending_coders = trending_rating;
}



var morgan = new Client("Morgan", 21, "We'll meet again in another life when we are both dogs.", 95);

var chandler = new Client("Chandler", 37,"An uninspected life is not worth living.", 91);

var kristen_bell= new Client("Kristen Bell", 33, "Do you wanna build a snowman?", 54);

var adam_sandler= new Client("Adam Sandler", 47, "That's your home! Are you too good for your home?!", 120);

var jim_carrey = new Client("Jim Carrey", 52, "...So you're telling me there's a chance? YEAH!", 32);


console.log(morgan, chandler, kristen_bell, adam_sandler, jim_carrey);

console.log(blankspace);


morgan.showQuote = function(quote){
  console.log(quote);
};

morgan.showQuote(morgan.quote);


//--------------Reflection
/*

1.  What parts of your strategy worked? What problems did you face?
		Both of us were very open to thinking out loud and working fluidly with each other.  My peering partner had a fairly strong grasp of objects
			in JavaScript.  How to create, add to, and access them.

2.  What questions did you have while coding? What resources did you find to help you answer them?
		We struggled at first with trying to condense all of the different occurences of Client into one construtor method.  Our guide helped and 
			stackoverflow helped and a little old fashion putting our noodles together.


3.  What concepts are you having trouble with, or did you just figure something out? If so, what?
		We both worked hard on how to get the function from inside morgan to be called.


4.  Did you learn any new skills or tricks?
		We are not 100% sure that our approach is a valid approach for showQuote.  We wondered if it could be selfcalled as opposed to our approach
			of calling on line 65.

5.  How confident are you with each of the Learning Competencies?
		Pretty condfident.  I really want to over how to "iterate" when it comes to Objects in javaScript.  I know that from some of the reading that 
			each does not exist in JavaScript.  I know that the reading shows us how to replace it when dealing with arrays.  However, we didn't create 
			arrays, but somethiing more like a Hash.  I will do some research.

6.  Which parts of the challenge did you enjoy?
		Most all of it...  I really liked working with my partner


7.  Which parts of the challenge did you find tedious?
		None.  We did spend the most time on the showQuote  *BONUS*

*/