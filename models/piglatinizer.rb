class PigLatinizer
  def initialize
end

def piglatinize(string)
a = string.split(" ")
b = a.map {|word| piglatinize_word(word)}
b.join(" ")
end

def piglatinize_word(word)
first_letter = word[0].downcase
vowels = ['a', 'e', 'i', 'o', 'u']
if vowels.include?(first_letter)
"#{word}way"
#if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
# piglatinize word that starts with a vowel

else
consonants = []
consonants << word[0]
if ["a", "e", "i", "o", "u"].include?(word[1]) == false
consonants << word[1]
if ["a", "e", "i", "o", "u"].include?(word[2]) == false
consonants << word[2]
end
end
"#{word[consonants.length..-1] + consonants.join + "ay"}"
end
end

end