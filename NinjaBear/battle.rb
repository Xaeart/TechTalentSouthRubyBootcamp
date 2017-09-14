require_relative "bear"
require_relative "ninja"

class Battle

	attr_reader :fighter1, :fighter2

	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end

	def fight
		@fighter1.attack(@fighter2)
		@fighter2.attack(@fighter1)
		battle_status
	end


	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health left"
		puts "#{@fighter2.name} has #{@fighter2.health} health left"
	end
end

bear = Bear.new("Berry", 100, 12)
ninja = Ninja.new("Jet Li", 110, 10)

battle = Battle.new(bear, ninja)

# puts battle.fighter1.name
# puts battle.fighter2.name
# end

puts battle.fight
puts battle.fight
puts battle.fight
puts battle.fight