class Friend
	def greeting(who = nil)
		if who.class == NilClass
			"Hello!"
		else
			"Hello, #{who}!"
		end
	end
end