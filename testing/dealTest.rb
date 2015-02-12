require_relative '../card'
require_relative '../deck'
require_relative '../findSet'
require_relative '../checkSet'
require_relative '../printCards'

testDeck = Deck.new
testDeck.makeDeck
testDeck.shuffleDeck!
onTable = Array.new(testDeck.dealCards)