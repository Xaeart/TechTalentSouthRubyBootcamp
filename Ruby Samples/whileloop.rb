#Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7
while true
	#initialize variables and random.
	i = 0
	number = rand(0..10)
	puts number
	if number < 6
		i = i+1
		puts number
	else number == 7
		break
	end

	if i > 0
		puts "the number of times a number was below six was #{i}"
	else
		puts "There were no numbers below six in this random generation."
	end
end

