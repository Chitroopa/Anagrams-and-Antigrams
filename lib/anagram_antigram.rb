require('pry')
class String
  # function to check if inputted string is actual word
  # A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word
  define_method(:is_word?) do |word|

    word_check = ["a","e","i","o","u","y"]
    word_one = self.split("")
    word_two = word.split("")
    word_one_counter = 0
    word_two_counter = 0
    result = ""

    word_one.each() do |letter|
      if word_check.include?(letter)
        word_one_counter = word_one_counter + 1
      end
    end

    word_two.each() do |letter|
      if word_check.include?(letter)
        word_two_counter = word_two_counter + 1
      end
    end

    if word_one_counter > 0 && word_two_counter > 0
      result = true
    else
      result = false
    end

    result
  end

  # function to count common letter in both words
  define_method(:letter_match_count) do |second_word|
    word_one = self.split("").uniq()
    word_two = second_word.split("").uniq()
    match_counter = 0

    word_one.each() do |letter|
      if word_two.include?(letter)
        match_counter = match_counter + 1
      end
    end
    match_counter
  end

  # main function anagram_antigram
  define_method(:anagram_antigram) do |word|
    output_message = ""
    first_word = self.downcase()
    second_word = word.downcase()
    if first_word.is_word?(second_word)
       if first_word.letter_match_count(second_word) > 0 && first_word.length == second_word.length
# binding.pry
         output_message = "These words are anagrams."
       end

    else
      output_message = "You need to input actual words!"
    end
    output_message
  end

end
