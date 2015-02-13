 require_relative '../checkSet.rb'
require_relative '../deck.rb'
require_relative '../card.rb'
=begin
	
Test is used to test the chechSet function.  A new deck is created and cards
are dealt.  The array of cards on the table is passed as well as three cards.
	
=end
testDeck = Deck.new
testDeck.makeDeck
tableCards =Array.new(testDeck.dealCards)

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

test = checkSetColor(tableCards, 0, 3, 6)	#should produce 0
puts "Output: #{test}"
puts ""

puts "#{testDeck.pickACard(0).display}"
puts "#{testDeck.pickACard(1).display}"
puts "#{testDeck.pickACard(2).display}"

puts "test"

