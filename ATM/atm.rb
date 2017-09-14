require_relative 'customer'

class ATM
	def use
		self.start_account
	end


	def start_account
		puts "Welcome! Enter your name, new user!"
		name = gets.chomp
		puts "Hello #{name}, How much would you like to start with in your account?"
		amount = gets.chomp.to_i
		my_customer = Customer.new(name, amount)
		self.menu(my_customer, amount)
	end


	def menu(customer, balance)
		while true
			puts "Welcome #{customer.name} "
			puts "Please enter a choice selection"
			puts "1.  Check your balance"
			puts "2.  Make a deposit"
			puts "3.  Withdraw an amount"
			puts "4.  Exit"
			choice = gets.chomp


			case choice
			when "1"
				puts check_balance(customer.name, customer.balance)
			when "2"
				 puts "How much would you like to deposit?"
				 amount = gets.chomp.to_i
				 deposit(customer,amount)
			when "3"
				puts "How much would you like to withdraw"
				amount = gets.chomp.to_i
				withdraw(customer,amount)
			when "4"
				puts "Goodbye"
				break
			end

		end
	end




	def deposit(customer, amount)
		customer.balance = customer.balance + amount

		
	end

	def withdraw(customer, amount)
		if amount > customer.balance
			puts "I am sorry, you are poor."
		else
			customer.balance = customer.balance - amount
			puts "Your new balance is #{customer.balance}"
		end
	end

	def check_balance(customer, balance)
		puts "Hello, #{customer}, your current balance is #{balance}"
	end


	atm = ATM.new 
	atm.use
	atm.check_balance
end


