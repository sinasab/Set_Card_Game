=begin
function printCards
param: cards[]
    array containing the cards to be printed
"Prettily" prints all the cards passed to it in the parameter to the console, 3 cards per line
=end
 def printCards(cards)
  i=0

  while i<cards.length
  	print " ___________  ___________  ___________\n"
  	print "|%11s||%11s||%11s|\n" % [cards[i].shape, cards[i+1].shape, cards[i+2].shape]
  	print "|%11s||%11s||%11s|\n" % [cards[i].number, cards[i+1].number, cards[i+2].number]
  	print "|%11s||%11s||%11s|\n" % [cards[i].shade, cards[i+1].shade, cards[i+2].shade]
  	print "|%11s||%11s||%11s|\n" % [cards[i].color, cards[i+1].color, cards[i+2].color]
  	print "|___________||___________||___________|\n"
    print "%11s %11s %11s\n\n" % [i+1, i+2, i+3]
  	i+=3
  end

end

=begin
  
prints all info for cards to user line by line, with the index of the card at the front of the line.
  
=end
def printCardsLines(cards)
  for i in 0...cards.length
    puts "#{i} #{cards[i].shape}, #{cards[i].shade}, #{cards[i].color}, #{cards[i].number}, "
  end
end
