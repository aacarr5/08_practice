
def translate(words)
	vowels = %w(a e i o u)
	consonants = %w(b c d f g h j k l m n p q r s t v w x y z)
	answer = []
	words.split.each do |word|
		if word.index("sch") == 0 #test SCH
			answer << word.gsub(/^.../,'') + "schay"
		elsif word.index("thr") == 0 #test THR
			answer << word.gsub(/^.../,'') + "thray"
		elsif word.index("qu") == 1  #test QU
			answer << word.gsub(/^.../,'') + word[0] + "quay" 
			#puts "hello from test QU"
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) #TESts if first letter is consonant and second is consant two
			answer << word.gsub(/^../,'') + word[0..1] + "ay"
			#puts "hello from constant 2"
		elsif vowels.include?(word[0]) && consonants.include?(word[1]) || (vowels.include?(word[0]) && vowels.include?(word[1]))  #TESTs if first letter is vowel and second is consonant
			answer << word+ "ay"
			#puts "response from vowel/consant"
		elsif word.index("qu") == 0  #test QU
			answer << word.gsub(/^../,'') + "quay" 
		elsif consonants.include?(word[0]) && vowels.include?(word[1]) #test if first letter is consonant and second is vow"
			answer << word.gsub(/^./,'') + word[0] + "ay"
			#puts 'hello from constant/vowel'
		elsif word.index("qu") == 0 #test if beginning is 'qu'
			answer << word.gsub(/^../,'') + "quay"
			#puts "hello from test bottom"
		else answer << word + "ay" # accounts for single character words
		end
	end
	answer.join(" ")
end



