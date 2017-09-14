def avg(a, b, c, d)
	total = a+b+c+d
	avg = total/4
	return c+d
end

puts avg(5,8,6,10)

name = ["Bob", "Fred", "George", "Oranges", ]
name[2]


#adding things to arrays.
wild_cats = ["cheetah", "lion", "tiger"]
wild_cats.push "bobcat"

user1 = {:first_name => "Natasha", :last_line => "Sandhir", :dob => "11/08/1981"}

#display the date of birth
puts user1[:dob]

#adding things to a hash
user1[:currentCity] = "Charlotte, NC"
puts user1[:currentCity]


alpha_soup = ["c", "y", "a", "b"]
puts alpha_soup[1]

alphabits = {"d" => 4, "k" => 14, "u" => 52}
puts alphabits["k"]
