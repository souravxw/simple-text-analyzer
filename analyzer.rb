

text = ""
line_count = 0
File.open("text.txt").each { |line|
  line_count+=1
  text+= line
}

lines = line_count
characters = text.length
characters_without_spaces = text.gsub(/\s+/, '').length
word_count =  text.split(" ").length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length
sentences_per_paragraph = sentence_count / paragraph_count
words_per_sentence = word_count / sentence_count



all_words = text.scan(/\w+/)
stopwords = %q{the a by on for of are with just but and to the my in I has
some}
good_words = all_words.reject{ |word| stopwords.include?(word)}
good_percentage = ((good_words.length.to_f / all_words.length.to_f)*100).to_i
puts "#{lines} lines"
puts "#{characters} characters"
puts "#{characters_without_spaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count} sentences"
puts "#{sentences_per_paragraph} sentences per paragraph (average)"
puts "#{words_per_sentence} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"

