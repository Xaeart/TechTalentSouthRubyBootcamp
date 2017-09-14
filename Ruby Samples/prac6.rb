class Vehicle
	def initialize(color,type)
		@color = color
		@type = type
	end
	def honk
		puts "Beep!"
	end
end

car = Vehicle.new("black","convertible")
car.honk