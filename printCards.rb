=begin
function printCards
param: cards[]
    array containing the cards to be printed
"Prettily" prints all the cards passed to it in the parameter to the console.
=end
 
def printCards(cards)
  i=0
  while i<(cards.length)
  puts " ___________
|%11s|
|%11s|
|%11s|
|%11s|
-----------
%11s" % [cards[i].getShape(),cards[i].getNumber(), cards[i].getShade(), cards[i].getColor(), i+1]
  i++
  end
end
