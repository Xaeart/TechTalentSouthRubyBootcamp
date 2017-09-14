my_array = []
while true
	x = rand(1..10)
	puts x
	if x < 6
		my_array.push '#{x}'
	end
	if x == 7
		break
	end
end
y = my_array.length
puts ""
puts "there are #{y} numbers under 6."