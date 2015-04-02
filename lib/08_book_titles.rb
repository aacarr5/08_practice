
class Book

  attr_reader :title

	def title=(title)  #
		answer = []
		words = title.split
		words[0].capitalize!
		words.each do |word|
			unless %w(in and of the a an).include? word
				word.capitalize!
			end
			answer << word
		end
		@title = answer.join(" ")
	end
end

