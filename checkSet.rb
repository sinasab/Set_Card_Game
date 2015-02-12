require_relative './card.rb'
require_relative './deck.rb'

def checkSetColor(cardDeck, x, y, z)
	colorCheck = 0;
	

	if (cardDeck.pickACard(x).color == cardDeck.pickACard(y).color and cardDeck.pickACard(z).color == cardDeck.pickACard(y).color) or ((cardDeck.pickACard(x).color != cardDeck.pickACard(y).color) and (cardDeck.pickACard(x).color != cardDeck.pickACard(z).color) and (cardDeck.pickACard(y).color != cardDeck.pickACard(z).color))
		colorCheck = 1  
	
	end

	return colorCheck

end

def checkSetShape(cardDeck, x, y, z)
	
	shapeCheck = 0;

	if (cardDeck.pickACard(x).shape == cardDeck.pickACard(y).shape and cardDeck.pickACard(z).shape == cardDeck.pickACard(y).shape) or ((cardDeck.pickACard(x).shape != cardDeck.pickACard(y).shape) and (cardDeck.pickACard(x).shape != cardDeck.pickACard(z).shape) and (cardDeck.pickACard(y).shape != cardDeck.pickACard(z).shape))
		shapeCheck = 1  
	end
	return shapeCheck

end

def checkSetNumber(cardDeck, x, y, z)
	
	numberCheck = 0;

	if (cardDeck.pickACard(x).number == cardDeck.pickACard(y).number and cardDeck.pickACard(z).number == cardDeck.pickACard(y).number) or ((cardDeck.pickACard(x).number != cardDeck.pickACard(y).number) and (cardDeck.pickACard(x).number != cardDeck.pickACard(z).number) and (cardDeck.pickACard(y).number != cardDeck.pickACard(z).number))
		numberCheck = 1  
	end
	return numberCheck
end

def checkSetShade(cardDeck, x, y, z)
	
	shadeCheck = 0;
	


	if (cardDeck.pickACard(x).shade == cardDeck.pickACard(y).shade and cardDeck.pickACard(z).shade == cardDeck.pickACard(y).shade) or ((cardDeck.pickACard(x).shade != cardDeck.pickACard(y).shade) and (cardDeck.pickACard(x).shade != cardDeck.pickACard(z).shade) and (cardDeck.pickACard(y).shade != cardDeck.pickACard(z).shade))
		shadeCheck = 1 
	end
	return shadeCheck
end

=begin
param cardDeck:
		set of cards in an array that will hold individual cards
param: card1, card2, card3
		three cards to be checked 
return: true for set, false for no set

This method calls the methods that check each component of the individual cards. If all 4 aspects fit the requirements for a set, then there is a set	

=end

def checkSet(cardDeck, card1, card2, card3)

	sumCheck = 0
	sumCheck = checkSetShade(cardDeck, card1, card2, card3) + checkSetNumber(cardDeck, card1, card2, card3) + checkSetColor(cardDeck, card1, card2, card3) + checkSetShape(cardDeck, card1, card2, card3)

	return sumCheck == 4

end