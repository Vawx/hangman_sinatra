require 'sinatra'
require 'sinatra/reloader'
require './lib/hangman'
require 'pry'

get '/' do
  @answer = Hangman.get_answer_key
  @guesses = Hangman.current_guess
  erb(:index)
end

post '/start' do
  @answer = Hangman.new_game
  redirect '/'
end

post '/guess' do
  answer = Hangman.get_answer_key
  state = Hangman.get_state
  input = params[:guess]
  guess = Hangman.update_guess(input)
  if answer == state
    erb(:win)
  elsif guess == false
    erb(:loser)
  else
    redirect '/'
  end
end
