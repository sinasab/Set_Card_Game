require_relative '../findSet.rb'
require_relative '../card'
require_relative '../checkSet'
require_relative '../deck.rb'

testDeck = Deck.new
testDeck.makeDeck
testCards = Array.new(testDeck.dealCards)

#sample size to check
puts "#{findSets(testCards)}"

#decrease numbers printed in arrays by one to get proper index
#verify all arrays returned are sets by checking aspects


#checks [1,4,7]
puts "Set 1"
puts "#{testCards[1].display}"
puts "#{testCards[4].display}"
puts "#{testCards[7].display}"

#checks [1,5,9]
puts "Set 2"
puts "#{testCards[0].display}"
puts "#{testCards[4].display}"
puts "#{testCards[8].display}"

checks [1,6,8]
puts "Set 3"
puts "#{testCards[0].display}"
puts "#{testCards[5].display}"
puts "#{testCards[7].display}"

checks [2,4,9]
puts "Set 4"
puts "#{testCards[1].display}"
puts "#{testCards[3].display}"
puts "#{testCards[8].display}"

checks [2,5,8]
puts "Set 5"
puts "#{testCards[1].display}"
puts "#{testCards[4].display}"
puts "#{testCards[7].display}"

checks [3,4,8]
puts "Set 6"
puts "#{testCards[2].display}"
puts "#{testCards[3].display}"
puts "#{testCards[7].display}"

#checks [3,5,7]
puts "Set 7"
puts "#{testCards[2].display}"
puts "#{testCards[4].display}"
puts "#{testCards[6].display}"

#checks [3,6,9]
puts "Set 8"
puts "#{testCards[2].display}"
puts "#{testCards[5].display}"
puts "#{testCards[8].display}"