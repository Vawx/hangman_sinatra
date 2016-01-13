require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the hangman path', {:type => :feature}) do
  it('checks if the answer is correct') do
    #
  end
end
