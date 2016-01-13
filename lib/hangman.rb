class Hangman
  @@possible_words = ["pickles"]
  @@hangman_games = []

  def initialize
    @answer_key = @@possible_words.sample
    @@hangman_games.push(self)
  end

  def get_answer_key
    @answer_key
  end

  define_singleton_method(:game_by_key) do |key|
    @@hangman_games.each do |game|
      if game.get_answer_key == key
        return game
      end
    end
  end
end
