# Project 2
## The Game of Set (Ruby 1)

## Instructions
Download all the files, then run "ruby startup.rb" in the terminal from the project directory. Works best if terminal is full screen. 

## Roles
* Overall Project Manager: Sina Sabet
* Coding Manager: Tom Antenucci
* Testing Manager: Steven Nihei
* Documentation: Roman Claprood

## Contributions
Please list who did what for each part of the project, and if anyone [pair programmed](http://en.wikipedia.org/wiki/Pair_programming) in this section.

* Roman: Created class for card elements. Created Player class. Created Deck class which contains function for creating deck of cards (Sina helped
         getting it to work properly). Wrote the dealTest and deckTest tests. Added printWelcome, printScore functions to final version of the game. Also helped organized into functions for readability.  Added comments to classes, as well as parts of the project.

* Sina: Worked on function to deal cards which was eventually implemented into the deck class, updated the classes to use "attr_accessor" like we were taught in class, wrote "printCards.rb", which prints cards to the console, either using ascii art to draw the cards or just with the card's info line by line. Worked on startup.rb and updated findSets to return an array of all the sets rather than just a boolean of whether or not sets existed. Helped fix some bugs in startup.rb. 

* Tom: Created outline for implementation of game in ruby, including a comprehensive list of possible functions, features, and tests to run, as well as potential bugs to be aware of. Created the first few iterations of the takeATurn function, as well as the original and first few iterations of the startup file and it's components. 

* Steven: Updated tests.md

* Zach: Created functions for checking if 3 selected cards were in a set. One function for each aspect of the card (ie color, shape). Added function to call the 3 checkSets and return whether the 3 cards are a set. Made findSet to iterate through every possible combo of cards (Roman helped with the logic behind it). Tests for checkSet.rb (checkSetTest.rb). Test for findSet (testFindSet.rb). Helped overall with some of the ideas on how to implement rules of the game through communication with teammates. 

## Testing
Please put all testing materials (writeups code etc) in the `testing` dir.
