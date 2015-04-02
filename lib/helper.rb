	def seconds(time)
		hours = time / 3600
		minutes = (time - (hours*3600)) / 60 
		seconds = time - hours*3600 - minutes*60
		hours_str = "%02d" % hours
		minutes_str = "%02d" % minutes
		seconds_str = "%02d" % seconds
		puts "#{hours_str}:#{minutes_str}:#{seconds}"
	end

	puts seconds(0)
	puts seconds(12)
	puts seconds(90)
	puts seconds(4000)