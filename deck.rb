#Deck class
require_relative './card'

class Deck
#Constructor
	def initialize
		@deck = Array.new(81, Card.new)
	end
	#shuffles the deck of cards
	def shuffleDeck
		@deck.shuffle!
	end
	#returns the decksize
	def deckSize
		return @deck.size
	end
	#deals a card from position 0 in array
	def dealCard
		if (@deckSize > 0)
			return @deck.shift
		end
	end
	#returns a card at the desired position, used for testing.
	def pickACard(int)
		if ((int >= 0) && (int < @deck.size))
			return @deck[int]
		else
			puts "Card unavailables"
		end
	end
=begin
	This function is used to create the cards and the playing deck.
	Each for loop is for a characteristic of the card(shape, color,etc).
	It then adds the card to the deck (array).

	@updates: 
	   deck: An array that is a deck of SET! cards.
=end	
	def makeDeck
		shadeArray = ["solid", "striped","open"]
		numberArray = [1,2,3]
		shapeArray = ["diamond", "squiggle", "oval"]
		colorArray = ["red", "green", "purple"]

		count =0			
			for j in 0..2
				for k in 0..2
					for l in 0..2
						for m in 0..2
							currentCard = Card.new
							currentCard.setShape(shapeArray[j])
							currentCard.setNumber(numberArray[k])
							currentCard.setShade(shadeArray[l])
							currentCard.setColor(colorArray[m])
							@deck[count] = currentCard
							count += 1
						end						
					end
				end
			end
	end
end
