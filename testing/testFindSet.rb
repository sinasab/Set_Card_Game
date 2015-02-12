require_relative '../findSet.rb'
require_relative '../card'
require_relative '../checkSet'

testDeck = Deck.new
testDeck.makeDeck

findSet(testDeck)