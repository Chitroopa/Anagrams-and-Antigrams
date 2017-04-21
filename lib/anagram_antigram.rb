require('pry')
class String
  # function to check if single word is actual word
  # A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word
  define_method(:is_word?) do

    word_check = ["a","e","i","o","u","y"]
    word_split = self.split("")
    counter = 0
    word_split.each() do |letter|
      if word_check.include?(letter)
        counter = counter + 1
      end
    end
    if counter > 0
      result = true
    else
      result = false
    end
    result
  end

  # function to check if mutiple word string has actual words
  # calls is_word? sub function
  define_method(:has_actual_word?) do
    actual_word_counter = 0
    not_a_word_counter = 0
    result = ""
    if self.split().length > 1

      self.split().each do |single_word|
        if single_word.is_word?()
          actual_word_counter = actual_word_counter + 1
        else
          not_a_word_counter = not_a_word_counter + 1
        end
      end

      if not_a_word_counter > 0
        result = false
      else
        result = true
      end

    else
      result = self.is_word?()
    end
    result
  end

  # function to count common letter in both words
  define_method(:letter_match_count) do |second_word|
    word_one = self.split("")
    word_two = second_word.split("")
    match_counter = 0

    word_one.each() do |letter|
      if word_two.include?(letter)
        match_counter = match_counter + 1
      end
    end
    match_counter
  end

  # main function anagram_antigram
  # calls has_actual_word sub function to check for actual words
  # calls letter_match_count sub function to get matched letters count 
  define_method(:anagram_antigram) do |second_string|
    output_message = ""


    first_word_formatted = self.gsub(/[^a-z]/i, '').downcase()
    second_word_formatted = second_string.gsub(/[^a-z]/i, '').downcase()

    if self.downcase().has_actual_word? && second_string.downcase().has_actual_word?

      word_match_counter = first_word_formatted.letter_match_count(second_word_formatted)
      if first_word_formatted.length == second_word_formatted.length && (word_match_counter > 0 && word_match_counter == first_word_formatted.length)
          output_message = "These words are anagrams."
          if first_word_formatted == second_word_formatted.reverse()
            output_message = "These words are palindromes."
          end
      elsif word_match_counter == 0
        output_message = "These words have no letter matches and are antigrams."
      else
        output_message = "These words are not anagrams or antigrams"
      end

    else
      output_message = "You need to input actual words!"
    end
    output_message
  end

end
