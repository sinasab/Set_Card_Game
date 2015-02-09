#Player Class
=begin
Class for Player.  Each player has the following.
name
score
pType - human/computer if we add this functionality.
bestScore - highest score during current session.
bestTime - fastest time if we add this.
=end
class Player

	def initialize()
		#Constructor
		@name = nil
		@score = 0
		@pType = nil
		@bestScore = 0
		@bestTime = 0
	end
	
	#Displays player info as
	#name
	#score bestScore
	#
	def display()
		puts @name
		print "#{@score} " 
		print "#{@bestScore}\n"
	end

	def getName
		return @name
	end

	def setName(name)
		@name = name
	end

	def getScore()
		return @score
	end

	def setScore(score)
		@score = score
	end

	def setType(type)
		@pType = type
	end

	def getType()
		return @pType
	end

end

test = Player.new
test.setName("Roman")
puts "My name is #{test.getName}"
