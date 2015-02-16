require_relative './card.rb'

#Author: Zach Spieler.
#Acknowledgements: Roman made changes so that cardDeck was an array instead of instance of the deck class

=begin
param: cardDeck
	A deck of cards in array form that contains all cards
param x,y,z
	Contains the 3 indices of the cards being checked.

	returns 1 if the colors are all the same or all different, 0 otherwise
=end
def checkSetColor(cardDeck, x, y, z)
	colorCheck = 0;
	if (cardDeck[x].color == cardDeck[y].color and cardDeck[z].color == cardDeck[y].color) or ((cardDeck[x].color != cardDeck[y].color) and (cardDeck[x].color != cardDeck[z].color) and (cardDeck[y].color != cardDeck[z].color))
		colorCheck = 1  
	end
	return colorCheck

end

=begin
param: cardDeck
	A deck of cards in array form that contains all cards
param x,y,z
	Contains the 3 indices of the cards being checked.

	returns 1 if the shapes are all the same or all different, 0 otherwise
=end
def checkSetShape(cardDeck, x, y, z)
	shapeCheck = 0;
	if (cardDeck[x].shape == cardDeck[y].shape and cardDeck[z].shape == cardDeck[y].shape) or ((cardDeck[x].shape != cardDeck[y].shape) and (cardDeck[x].shape != cardDeck[z].shape) and (cardDeck[y].shape != cardDeck[z].shape))
		shapeCheck = 1  
	end
	return shapeCheck

end


=begin
param: cardDeck
	A deck of cards in array form that contains all cards
param x,y,z
	Contains the 3 indices of the cards being checked.

	returns 1 if the numbers are all the same or all different, 0 otherwise
=end
def checkSetNumber(cardDeck, x, y, z)
	numberCheck = 0;
	if (cardDeck[x].number == cardDeck[y].number and cardDeck[z].number == cardDeck[y].number) or ((cardDeck[x].number != cardDeck[y].number) and (cardDeck[x].number != cardDeck[z].number) and (cardDeck[y].number != cardDeck[z].number))
		numberCheck = 1  
	end
	return numberCheck
end


=begin
param: cardDeck
	A deck of cards in array form that contains all cards
param x,y,z
	Contains the 3 indices of the cards being checked.

	returns 1 if the shades are all the same or all different, 0 otherwise
=end
def checkSetShade(cardDeck, x, y, z)
	shadeCheck = 0;
	if (cardDeck[x].shade == cardDeck[y].shade and cardDeck[z].shade == cardDeck[y].shade) or ((cardDeck[x].shade != cardDeck[y].shade) and (cardDeck[x].shade != cardDeck[z].shade) and (cardDeck[y].shade != cardDeck[z].shade))
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