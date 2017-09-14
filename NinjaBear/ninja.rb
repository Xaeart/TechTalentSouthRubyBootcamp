require_relative 'fighter'
class Ninja < Fighter


def initialize(name, health, power)
	super(name, health, power)
end

def attack(enemy)
	puts"...silence"
	enemy.lose_health(self.power)
end

end


	# puts ninja.attack(bear)
	# puts bear.inspect
	# p bear 
	# THESE ARE THE SAME ^^^^^
