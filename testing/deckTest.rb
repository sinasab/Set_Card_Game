require './card.rb'


shadeArray = ["solid", "striped","open"]
numberArray = [1,2,3]
shapeArray = ["diamond", "squiggle", "oval"]
colorArray = ["red", "green", "purple"]

test = makeDeck(shapeArray,shadeArray,numberArray,colorArray)

i = 0
test[79].display
test[79].setColor("purple")
unique = true
test[79].display

while i < test.size
	current = Card.new
	test[i] = current
	j = i+1
	while j < test.size
		if (current.getShape == test[j].getShape) then
			unique = false
			puts "Shoot!"
			break
		end

		if(current.getShade == test[j].getShade)then
			unique = false
			puts "Shoot!"
			break
		end

		if(current.getNumber == test[j].getNumber)then
			unique = false
			puts "Shoot!"
			break
		end

		if(current.getColor == test[j].getColor)then
			unique = false
			puts "Shoot!"
			break
		end

		j = j+1
	end

	i = i+1

end

test[79].display