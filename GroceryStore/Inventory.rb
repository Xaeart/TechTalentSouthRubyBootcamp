require_relative 'item'

	def menu()
		while true
			puts "Welcome Shop Owner"
			puts "Please enter a choice selection"
			puts "1.  View Inventory"
			puts "2.  Add Inventory"
			puts "3.  Sell Inventory"
			puts "4.  Delete Inventory"
			choice = gets.chomp

			case choice
			when "1"

			when "2"

			when "3"

			when "4"

			when "5"
				break
			end

		end
	end	
end


