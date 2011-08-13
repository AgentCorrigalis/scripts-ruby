#!/usr/bin/env ruby

file = ARGV[0]

lines = File.readlines(file)
text = lines.join

lineCount = lines.size
characters = text.length
noneWhiteCharacters = text.gsub(/\s+/,'').length
words = text.split.size
sentences = text.split(/\.|\?|!/).size
paragraphs = text.split(/\n\n/).size
wordsPerSentence = words/sentences
sentencesPerParagraph = sentences/paragraphs

allWords = text.scan(/\w+/)
allSentences = text.gsub(/\s+/,' ').strip.split(/\.|\?|\!/)

allSentencesSorted = allSentences.sort_by { |sentence| sentence.length }
oneThirdOfSentences = allSentencesSorted.length / 3
idealSentences = allSentencesSorted.slice(oneThirdOfSentences, oneThirdOfSentences + 1)
idealSentences = idealSentences.select { |sentence| sentence =~ /is|are/ }


stopWords = %w{the a by on for of are with just but and to the my I has some in}
keyWords = allWords.select { |word| !stopWords.include?(word) }

percentUsefulWords = ((keyWords.length.to_f / allWords.length.to_f) * 100).to_i

puts "#{lineCount} lines"
puts "#{characters} characters"
puts "#{noneWhiteCharacters} none white characters"
puts "#{words} words"
puts "#{sentences} sentences"
puts "#{paragraphs} paragraphs"
puts "#{wordsPerSentence} words / sentence"
puts "#{sentencesPerParagraph} sentences / paragraph"
puts "#{percentUsefulWords}% useful words"

puts "#{idealSentences.join(", ")}"
