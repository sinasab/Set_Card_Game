require_relative '../checkSet.rb'
require_relative '../deck.rb'
require_relative '../card.rb'

testDeck = Deck.new
testDeck.makeDeck

puts "Color Test 1 - 3 different colors: Should Produce 1"
puts "#{testDeck.pickACard(0).color}"	#output red
puts "#{testDeck.pickACard(1).color}"	#ouptut green
puts "#{testDeck.pickACard(2).color}"	#output purple

test = checkSetColor(testDeck, 0, 1, 2)	#should produce 1
puts "Output: #{test}"
puts ""

puts "Color Test 2 - 2 same, 1 different: Should Produce 0"
puts "#{testDeck.pickACard(0).color}"	#output red
puts "#{testDeck.pickACard(1).color}"	#ouptut green
puts "#{testDeck.pickACard(4).color}"	#output green

test = checkSetColor(testDeck, 0, 1, 4)	#should produce 0
puts "Output: #{test}"
puts ""

puts "Color Test 3  - 3 same: Should Produce 1"
puts "#{testDeck.pickACard(0).color}"	#output red
puts "#{testDeck.pickACard(3).color}"	#ouptut red
puts "#{testDeck.pickACard(6).color}"	#output red

test = checkSetColor(testDeck, 0, 3, 6)	#should produce 0
puts "Output: #{test}"
puts ""

