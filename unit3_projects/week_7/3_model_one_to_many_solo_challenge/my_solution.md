# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->

Users Fields
	username
	password
	email
	language
	time_zone
	country
	photo
	header
	name
	location
	website
	bio

## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->

Tweet Fields
	text field
	photo

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 

It really depends on how I read the original question.

Option #1: (Me and my Tweets: Referring to Ownership)
	(This option focuses on certain words used in 03_model_one_to_many_solo_challenge.  The challenge refers to information collected for my 
	profile.  It refers to creating a new tweet, which then would be mine.)
	
		This would put 'users' and 'tweets' in  a one-to-many relationship.  After all, my tweets are owned by me.  So, one user can have several tweets.

Option #2: (Users and tweets: Referring to Accesss)

		This would put 'users' and 'tweets' in a many-to-many relationship.  If I can see my tweets and the tweets of others and others share this same 
		ability, then many users have access to many different user's tweets.
	

Where do you think they are connected? Explain your answer.

		I believe that they are connected using @name.  This appears to be a URL and this would be unique per user.

## Release 3: Schema Design

<img src="one_to_many.jpg" alt="One to Many Schema">

## Release 4: SQL Statements
<!-- Include your SQL Statements. How can you make markdown files show blocks of code? -->
    (I have tried to make it show blocks of code and I believe that this is to be accomplished, right now while viewing.  I am not satisfied, but need to move on for now.)


* all the tweets for a certain user id
	<pre><code>SELECT text_field FROM tweets WHERE id = (a certain number)</code></pre>

** the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
	<pre><code>SELECT text_field FROM tweets WHERE id = (a certain number) && updated_at > </code></pre>

*** all the tweets associated with a given user's twitter handle
	<pre><code>SELECT text_field FROM tweets</code></pre>
	<pre><code>JOIN users USING(@name)</code></pre>

**** the twitter handle associated with a given tweet id
	<pre><code>SELECT @name FROM users</code></pre>
	<pre><code>JOIN tweets USING(id)</code></pre>

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->

How to Reflect
Reflecting is an incredibly important part of the learning process. It requires you to take a moment and think about what you've learned, what is confusing, and where you need to go. They document your learning process.

Reflections are mandatory for each challenge.

When writing your reflection, write it for an audience. Tell a story of what you tried and what you learned. It will make it easier for you to go back and re-teach yourself or know what you were thinking.

Remember, your reflections aren't just for teachers, they are for your fellow cohort mates to learn from, so be generous! You could end up helping a fellow student learn something new.

Answer the following questions (in addition to the challenge-specific questions) in your reflection:

1)  What parts of your strategy worked? What problems did you face?

I believe that my connection between db's is correct.  While on Twitter I noticed that a URL was displayed and it made sense that this is the link, because this URL would be unique for each user.        

2)  What questions did you have while coding? What resources did you find to help you answer them?

This refers to markdown and not db.  I was not able to get the code to appear as code.  I used the following sites: 
http://daringfireball.net/projects/markdown/syntax#precode
https://help.github.com/articles/github-flavored-markdown
http://johnmacfarlane.net/pandoc/README.html
http://support.mashery.com/docs/customizing_your_portal/Markdown_Cheat_Sheet

3)  What concepts are you having trouble with, or did you just figure something out? If so, what?

 Join is a bit tricky or it is so obvious that I am not seeing it.  I have worked with Venn Diagrams and believe that this is roughly the idea behind join, plus a document that Patrick sent me, however, I need more practice with running databases.

4)  Did you learn any new skills or tricks?

Mostly practiced and investigated further.

5)  How confident are you with each of the Learning Competencies?

I feel pretty confident about creating schema and not repeating     

6)  Which parts of the challenge did you enjoy?

I enjoyed investigating a real-life database and looking at the connections.  I also liked thinking of what would make the most sense a primary key.    

7)  Which parts of the challenge did you find tedious?

I didn't find any of this assignment tedious.


