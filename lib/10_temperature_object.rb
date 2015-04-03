class Temperature

	attr_accessor :opts, :c, :f

	def initalize(opts = {})
		@opts = opts
		@c = opts[:c]
		@f = opts[:f]
	end

end

class Celsius < Temperature

	def in_celius
		if @opts.has_key? :c
			@c
		elsif @opts.has_key? :f
			@c = ((@c -32) * 5.0/9.0)
		end
	end
end

class Fahrenheit < Temperature
	def in_fahrenheit
		if @opts.has_key? :f
			@f
		elsif @opts.has_key? :c
			@f = (@f * 9.0/5.0) + 32
		end
	end
end