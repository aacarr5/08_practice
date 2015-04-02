def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(array)
	array.inject(:+).to_i
end

def compute(array)
	array.inject(:*)
end

def factorial(number)
	(1..number).inject(:*).to_i
end

def factorial2(number)
	i = 1
	counter = 1
	until i > number
		counter = counter*i
		i+=1
	end
	counter
end

def raisepower(number,power)
	number**power
end



#puts factorial2(5)
#puts factorial(5)