$: << File.dirname(__FILE__) + "/models"

require 'sinatra'
require 'name_generator'

WORDS = ['Escape', 'Room', 'Quiz', 'Level', 'Rooms', 'Question', 'Clue', 'Time', 'Puzzle', 'Puzzles', 'House', 'Secret', 'Game', 'Games', 'Challenge', 'Challenges', 'Logic', 'Mystery', 'Mysteries', 'Exit', 'Key', 'Keys', 'Safe', 'Door', 'Doors', 'Solve', 'Mind']

get '/' do
  erb :index
end

post '/generate' do
  @result = NameGenerator.generate(WORDS)
  erb :result
end
