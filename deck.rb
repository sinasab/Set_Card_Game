#Deck class
require_relative './card'
require_relative './printCards'
require_relative './findSet'

class Deck
#Constructor
	def initialize
		@deck = Array.new(81, Card.new)
	end
	#shuffles the deck of cards
	def shuffleDeck!
		@deck.shuffle!
	end
	#returns the decksize
	def deckSize
		return @deck.size
	end
	#deals a card from position 0 in array
	def dealCard!
		if (@deck.size > 0)
			return @deck.shift
		end
	end
	#returns a card at the desired position, used for testing.
	def pickACard(int)
		if ((int >= 0) && (int < @deck.size))
			return @deck[int]
		else
			puts "Card unavailables"
			return nil
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
						currentCard.shape=(shapeArray[j])
						currentCard.number=(numberArray[k])
						currentCard.shade=(shadeArray[l])
						currentCard.color=(colorArray[m])
						@deck[count] = currentCard
						count += 1
					end					
				end
			end
		end
	end

=begin
function dealCards
param: @deck
returns: an array containing the cards that are currently in play
This method takes care of everything that needs to be done when dealing for Set.
This includes the following: 
    -Take 12 cards from the top of the deck
    -Check to see if there exists at least 1 set in those cards
    -If there is not a set, keep adding 3 cards from the deck until there is a set
    -Then show those cards to the user in the console
    -Then return array of cards currently in play
=end

	def dealCards
    	tableCards = []
    	#deal cards 3 at a time until the table has at least 12 cards and a set. stop if the deck runs out of cards
    	while(@deck.length>0 && (tableCards.length<12 || findSet(tableCards).size==0))
        	tableCards.push(@deck.pop());
        	tableCards.push(@deck.pop());
        	tableCards.push(@deck.pop());
    	end    
    	printCards(tableCards);

    	return tableCards
	end

end
