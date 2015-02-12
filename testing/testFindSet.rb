require_relative '../findSet.rb'
require_relative '../card'
require_relative '../checkSet'

testDeck = Deck.new
testDeck.makeDeck
testCards = Array.new(testDeck.dealCards)

findSet(testCards)