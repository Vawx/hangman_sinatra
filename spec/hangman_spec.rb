require 'rspec'
require 'hangman'

describe(Hangman) do
  describe("#get_answer_key") do
    it("returns answer for instance of class") do
      test_game = Hangman.new()
      expect(test_game.get_answer_key).to(eq("pickles"))
    end
  end
end
