def ftoc(number)
	((number - 32) * 5.0/9.0)
end

def ctof(number)
	(number * 9.0/5.0 + 32)
end

puts ctof(37)
puts ctof(20)