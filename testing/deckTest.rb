require_relative '../card.rb'
require_relative '../deck.rb'

#This test is used to show that the makeDeck function creates a deck of 81 unique cards

test = Deck.new
test.makeDeck

i = 0
unique = true
=begin
This loop tests that a newly created deck to see if there are any duplicate card attributes
=end
while i < test.deckSize
	current = Card.new
	current = test.pickACard(i)
	j = i+1
	while j < test.deckSize
		if ((current.shape == test.pickACard(j).shape) && (current.shade == test.pickACard(j).shade) && (current.number == test.pickACard(j).number) && (current.color == test.pickACard(j).color)) then
			unique = false
			break
		end

		j +=1
	end
	i += 1
end
puts "Results of an unaltered deck: #{unique}"
puts "the size of the deck is #{test.deckSize}"

i = 0
j = 0
unique2 = true
test.pickACard(30).display
test.pickACard(30).display
test.pickACard(30).color = "green"
=begin
This loop tests that an altered deck will have a duplicate.
=end
while i < test.deckSize
	current = Card.new
	current = test.pickACard(i)
	j = i+1
	while j < test.deckSize
		if ((current.shape == test.pickACard(j).shape) && (current.shade == test.pickACard(j).shade) && (current.number == test.pickACard(j).number) && (current.color == test.pickACard(j).color)) then
			unique2 = false
			break
		end

		j +=1
	end
	i += 1
end
puts "Results of an altered deck: #{unique2}"
