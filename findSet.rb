require_relative './card'
require_relative './checkSet'

=begin
shownCards: an array holding the cards that are shown on the shown to the user
returns true if a set exists, false otherwise
This method checks for sets in the cards shown
=end
def findSet(shownCards)
	hasSet = false

	i = 0;
	
	#z is used as a test to make sure that there are enough iterations. for example if there are 12 cards shown, then z should read 12c3 (12 choose 3) which would be 220
	z = 0
	while i < (shownCards.deckSize)-2 and #!hasSet
		j = i +1
		while j < (shownCards.deckSize)-1 and #!hasSet
			k = j + 1
			while k < (shownCards.deckSize) and #!hasSet
				hasSet = checkSet(shownCards, i, j, k)
				z += 1
				puts "#{z}"
				k +=1
			end
			j +=1
		end
		i +=1

	end
	return hasSet
end