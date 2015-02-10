require_relative "../card.rb"

#This test is used to show that the makeDeck function creates a deck of 81 unique cards

test = makeDeck()

i = 0
unique = true
=begin
This loop tests that a newly created deck to see if there are any duplicate card attributes
=end
while i < test.size
	current = Card.new
	current = test[i]
	j = i+1
	while j < test.size
		if ((current.getShape == test[j].getShape) && (current.getShade == test[j].getShade) && (current.getNumber == test[j].getNumber) && 				(current.getColor == test[j].getColor)) then
			unique = false
			break
		end

		j +=1
	end
	i += 1
end
puts "Results of an unaltered deck: #{unique}"
puts "the size of the deck is #{test.size}"

i = 0
j = 0
unique2 = true
test[30].display
test[31].display
test[30].setColor("green")
=begin
This loop tests that an altered deck will have a duplicate.
=end
while i < test.size
	current = Card.new
	current = test[i]
	j = i+1
	while j < test.size
		if ((current.getShape == test[j].getShape) && (current.getShade == test[j].getShade) && (current.getNumber == test[j].getNumber) && 				(current.getColor == test[j].getColor)) then
			unique2 = false
			break
		end

		j +=1
	end
	i += 1
end
puts "Results of an altered deck: #{unique2}"

