require_relative './card'
require_relative './checkSet'

=begin
Takes as a parameter an array of cards and returns an array of triples that are indexes of cards that make sets. ie. if cards 1,3, and 4 were a set, and 5, 8, and 12 were a set, the function will return [[1,3,4],[1,8,12]].
=end
def findSets(shownCards)
	sets=[]
	for i in 0...shownCards.size-2
		for j in i+1...shownCards.size-1
			for k in j+2...shownCards.size
				if checkSet(shownCards,i,j,k)
					sets.push([i,j,k])
				end
			end
		end
	end
	return sets
end