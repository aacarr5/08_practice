class Timer 
	attr_accessor :seconds

	def initialize(time = 0)
		@seconds = time
	end	
	
	def time_string
		calculator = Timer::Calculator.new( @seconds )
		Timer::Formatter.string( calculator.hours, calculator.minutes, calculator.seconds )
	end	
end

class Timer
	class Calculator
		attr_accessor :hours, :minutes, :seconds

		def initialize(seconds)
			@hours, @minutes, @seconds = 0, 0, seconds

			calculate!
		end	

		private
			def calculate!
		  	@hours = @seconds / 3600
		  	@minutes = ( @seconds - ( @hours*3600 ) ) / 60 
		  	@seconds = @seconds - @hours*3600 - @minutes*60
			end
	end
end

class Timer

	class Formatter
		def self.string(hours, minutes, seconds)
			hours_str = "%02d" % hours
			minutes_str = "%02d" % minutes
			seconds_str = "%02d" % seconds
		 "#{hours_str}:#{minutes_str}:#{seconds_str}"
		end
	end
end