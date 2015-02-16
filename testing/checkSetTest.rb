 require_relative '../checkSet.rb'
require_relative '../deck.rb'
require_relative '../card.rb'

#Author: Zach Spieler

=begin
	
Test is used to test the chechSet function.  A new deck is created and cards
are dealt.  The array of cards on the table is passed as well as three cards.
	
=end
testDeck = Deck.new
testDeck.makeDeck

#modification of dealCards found in the card class. Used to make an array holding all 81 cards in the deck
def dealCardsTest(testDeck)
    	tableCards = []
    	i = 0
    	#deal cards 3 at a time until the table has at least 12 cards and a set. stop if the deck runs out of cards
    	while tableCards.length < 81
        	tableCards.push(testDeck.pickACard(i))
    	i += 1
    	end
    	return tableCards
end

tableCards = dealCardsTest(testDeck)



puts "Color Test 1 - 3 different colors: Should Produce 1"
puts "#{tableCards[0].color}"	#output red
puts "#{tableCards[1].color}"	#ouptut green
puts "#{tableCards[2].color}"	#output purple

test = checkSetColor(tableCards, 0, 1, 2)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Color Test 2 - 2 same, 1 different: Should Produce 0"
puts "#{tableCards[0].color}"	#output red
puts "#{tableCards[1].color}"	#ouptut green
puts "#{tableCards[4].color}"	#output green

test = checkSetColor(tableCards, 0, 1, 4)	#should produce 0
puts "Output: #{test}"
puts ""

puts "Color Test 3  - 3 same: Should Produce 1"
puts "#{tableCards[0].color}"	#output red
puts "#{tableCards[3].color}"	#ouptut red
puts "#{tableCards[6].color}"	#output red

test = checkSetColor(tableCards, 0, 3, 6)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Shape Test 1  - 3 same: Should Produce 1"
puts "#{tableCards[0].shape}"	#output diamond
puts "#{tableCards[1].shape}"	#ouptut diamond
puts "#{tableCards[2].shape}"	#output diamond

test = checkSetShape(tableCards, 0, 1, 2)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Shape Test 2  - 3 different: Should Produce 1"
puts "#{tableCards[0].shape}"	#output diamond
puts "#{tableCards[30].shape}"	#ouptut squiggle
puts "#{tableCards[80].shape}"	#output oval

test = checkSetShape(tableCards, 0, 30, 80)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Shape Test 3  - 2 same, 1 different: Should Produce 0"
puts "#{tableCards[0].shape}"	#output diamond
puts "#{tableCards[1].shape}"	#ouptut diamond
puts "#{tableCards[80].shape}"	#output oval

test = checkSetShape(tableCards, 0, 1, 80)	#should produce 0
puts "Output: #{test}"
puts ""

puts "Shade Test 1  - 3 same: Should Produce 1"
puts "#{tableCards[0].shade}"	#output solid
puts "#{tableCards[1].shade}"	#ouptut solid
puts "#{tableCards[2].shade}"	#output solid

test = checkSetShade(tableCards, 0, 1, 2)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Shade Test 2  - 3 different: Should Produce 1"
puts "#{tableCards[0].shade}"	#output solid
puts "#{tableCards[3].shade}"	#ouptut striped
puts "#{tableCards[6].shade}"	#output open

test = checkSetShade(tableCards, 0, 3, 6)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Shade Test 3  - 2 same, 1 different: Should Produce 0"
puts "#{tableCards[0].shade}"	#output solid
puts "#{tableCards[1].shade}"	#ouptut solid
puts "#{tableCards[3].shade}"	#output striped

test = checkSetShade(tableCards, 0, 1, 3)	#should produce 0
puts "Output: #{test}"
puts ""

puts "Number Test 1  - 3 same: Should Produce 1"
puts "#{tableCards[0].number}"	#output 1
puts "#{tableCards[1].number}"	#ouptut 1
puts "#{tableCards[2].number}"	#output 1

test = checkSetNumber(tableCards, 0, 1, 2)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Number Test 2  - 3 same: Should Produce 1"
puts "#{tableCards[0].number}"	#output 1
puts "#{tableCards[15].number}"	#ouptut 2
puts "#{tableCards[26].number}"	#output 3

test = checkSetNumber(tableCards, 0, 15, 26)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Number Test 3  - 2 same, 1 different: Should Produce 0"
puts "#{tableCards[0].number}"	#output 1
puts "#{tableCards[1].number}"	#ouptut 1
puts "#{tableCards[26].number}"	#output 3

test = checkSetNumber(tableCards, 0, 1, 26)	#should produce 0
puts "Output: #{test}"
puts ""

puts "checkSet Test 1: Found a Set, print true"
puts "#{checkSet(tableCards, 0 ,1 ,2)}"

puts "checkSet Test 1: 3 Match, print false"
puts "#{checkSet(tableCards, 0 ,1 ,5)}"

puts "checkSet Test 3: 2 match, print false"
puts "#{checkSet(tableCards, 0 ,1 ,3)}"

puts "checkSet Test 3: 1 match, print false"
puts "#{checkSet(tableCards, 0 ,80 ,3)}"

puts "checkSet Test 3: 0 match, print false"
puts "#{checkSet(tableCards, 0 ,17 ,38)}"




