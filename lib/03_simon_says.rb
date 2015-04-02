def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word,counter=2)
	Array.new(counter,word).join(" ")
end


def start_of_word(word,characters)
	word[0..characters-1]
end

def first_word(string)
	string.split[0]
end

def titleize(title)
	short = %w(and the over) # would likely just load a file of short words instead
	title.split.each_with_index.map do |word,index|
		if short.include?(word) && index !=0 && index !=-1 #NOTE: This does not fully work. Still allows final word to be left un-captalized 
			word
		else 
			word.capitalize
		end
	end.join(" ")
end




def testter(title)
	title.split.each_with_index do |word, index|
		puts index
	end
end

puts titleize("war over peace over birds and over") #Run this to see 
