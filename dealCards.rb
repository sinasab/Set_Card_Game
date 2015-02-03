=begin

function dealCards

param: cardDeck
    array containing the current deck of cards

returns: an array containing the cards that are currently in play

This method takes care of everything that needs to be done when dealing for Set.

This includes the following: 
    -Take 12 cards from the top of the deck
    -Check to see if there exists at least 1 set in those cards
    -If there is not a set, keep adding 3 cards from the deck until there is a set
    -Then show those cards to the user in the console
    -Then return array of cards currently in play

=end

def dealCards(cardDeck)
    tableCards = []
    #deal cards 3 at a time until the table has at least 12 cards and a set. stop if the deck runs out of cards
    while(cardDeck.length>0 && (tableCards.length<12 || !hasSet(tableCards)))
        tableCards.push(cardDeck.pop());
        tableCards.push(cardDeck.pop());
        tableCards.push(cardDeck.pop());
    end
    
    printCards(tableCards);

    return tableCards
end
