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
		puts "Player: #{@name}"
		puts "Type: #{@pType}"
		print "Current score: #{@score} " 
		print "Best score: #{@bestScore}\n"
	end

	#returns player name
	def getName
		return @name
	end

	#sets name of player
	def setName(name)
		@name = name
	end
	# returns current score
	def getScore
		return @score
	end

	def setScore(score)
		@score = score
	end
	# sets player type
	def setType(type)
		@pType = type
	end
	#returns player type
	def getType
		return @pType
	end
	# increments score by 1
	def scorePoint
		@score += 1
		if (@score >= @bestScore)
			@bestScore = @score
		end
	end
	#Used if we would like to penalize player for a wrong set
	def losePoint
		@score -= 1
	end

end

