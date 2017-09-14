class Fighter

attr_reader :name
attr_accessor :health, :power

	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end

	def attack(enemy)
		enemy.lose_health(self.power)	
	end

	def lose_health(power_attacker)
	self.health -= power_attacker
	end

	end

	# rocky = Fighter.new("Rocky", 110, 15)
	# ali = Fighter.new("Ali", 100, 20)

	# puts rocky.attack(ali)
	# puts rocky.inspect

	# puts ali.attack(rocky)
	# puts ali.inspect

	# puts rocky.attack(ali)
	# puts rocky.inspect