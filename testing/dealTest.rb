require_relative '../card'
require_relative '../deck'
require_relative '../checkSet'
require_relative '../printCards'
require_relative '../findSet'

=begin
	
This test is simply for testing to see if the dealCards method works,
along with the print card. also going to test the findSet method.

Written by: Roman and Sina
=end
testDeck = Deck.new
testDeck.makeDeck
testDeck.shuffleDeck!
tableCards = testDeck.dealCards
printCards(tableCards)

#returns an array of possible sets in cards dealt
sets = Array.new(findSets(tableCards))
puts "hint: #{sets}"#displays a set from current cards
puts "Enter the card numbers you think are a set(# # #):"
choice = gets.split(' ')

isSet = checkSet(tableCards,choice[0].to_i,choice[1].to_i,choice[2].to_i)
puts "Were those cards a set? : #{isSet}"

#If a set is found, cards will be replaced
if(isSet) then
	tableCards[choice[0].to_i]=testDeck.dealCard!
	tableCards[choice[1].to_i]=testDeck.dealCard!
	tableCards[choice[2].to_i]=testDeck.dealCard!
	printCards(tableCards)
else
	printCards(tableCards)
end

