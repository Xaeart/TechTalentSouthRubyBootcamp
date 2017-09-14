require_relative 'Fighter'

class Bear < Fighter

	def initialize(name, health, power)
		super(name, health, power)
	end

	def attack(enemy)
		puts "RAWR!!!!"
		enemy.lose_health(self.power)
	end
end


# bear = Bear.new("bear", 100, 12)
# ninja = Fighter.new("ninja",100,10)

# puts ninja.attack(bear)
# puts bear.inspect

# puts bear.attack(ninja)
# puts ninja.inspect

