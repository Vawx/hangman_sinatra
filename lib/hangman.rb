require 'pry'

class Hangman
  @@possible_words = ["pickles"]
  @@answer_key = ""
  @@guesses = 0
  @@state = ""
  @@current_guess = ""

  define_singleton_method(:new_game) do
    @@guesses = 0
    @@current_guess = ""
    @@answer_key = @@possible_words.sample
    @@state = @@answer_key.gsub(/./, '_ ')
  end

  define_singleton_method(:get_answer_key) do
    return @@answer_key
  end

  define_singleton_method(:get_state) do
    return @@state
  end

  define_singleton_method(:current_guess) do
    @@current_guess
  end

  define_singleton_method(:update_guess) do |letter|
    if @@answer_key.include? letter
      @@current_guess << letter
      @@state = ""
      @@state = @@answer_key.gsub(/[^\_\+#{@@current_guess}]/,'_ ')
    else
      @@guesses += 1
      if @@guesses > 4
        return false
      end
    end
  end
end
