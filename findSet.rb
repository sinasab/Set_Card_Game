=begin

shownCards: an array holding the cards that are shown on the shown to the user

returns true if a set exists, false otherwise

This method checks for sets in the cards shown

=end
def findSet(shownCards)
	hasSet = false

	i = 15;
	j = i + 1
	k = j + 1
	#z is used as a test to make sure that there are enough iterations. for example if there are 12 cards shown, then z should read 12c3 (12 choose 3) which would be 220
	z = 0
	while i < (shownCards.size)-2 and !hasSet
		while j < (shownCards.size)-1 and !hasSet
			while k < (shownCards.size) and !hasSet
				hasSet = checkSet(shownCards, i, j, k)
				z += 1
				puts "#{z}"
			end
		end

	end
	return hasSet
end