	def reverser(&block)
		block.call.split.map {|x| x.reverse}.join(" ")
	end

	def adder(number=1,&block)
		block.call + number
	end

	def repeater(number=1)
		i = 0
		until i == number
			yield
			i+=1
		end
	end


