require_relative '../card'
require_relative '../deck'
require_relative '../findSet'
require_relative '../checkSet'
require_relative '../printCards'

=begin
	
This test is simply for testing to see if the dealCards method works,
along with the print card.
=end
testDeck = Deck.new
testDeck.makeDeck
testDeck.shuffleDeck!
testDeck.dealCards

puts "Enter the card numbers you think are a set:"
choice = gets.split(' ').to_i

puts choice
