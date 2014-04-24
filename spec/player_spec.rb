require 'player'
require 'cell'
require 'board'
require 'ship'
require 'water'

describe "Player" do

	player = Player.new("Jimbob")
	
	it 'has a name' do
		expect(player.name).to eq("Jimbob")
	end

	it 'has a board' do
		expect(player).to have_board
	end

	# it 'knows if there are any ships on the board' do
	# 	board = Board.new(self)
	# 	board.place_ship("A1")
	# 	expect(player).to have_ships_still_floating
	# end

	# it 'knows if there are no ships on the board' do
	# 	expect(player).not_to have_ships_still_floating
	# end

end