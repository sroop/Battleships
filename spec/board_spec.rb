require 'board'

describe "Board" do

	let(:board) { Board.new("Jimbob") }

	it 'has a player name' do
		expect(board.player).to eq "Jimbob"
	end

	it 'has a grid comprised of 100 keys and values' do
		expect(board.grid_hash.length).to eq 100
	end

	it 'has ten rows in the grid' do
		expect((board.rows).count).to eq 10
	end

	it 'has ten columns in the grid' do
		expect((board.columns).count).to eq 10	
	end

	it "marks with an 'o' the coordinate of a player's shot on water" do
		expect(board.register_shot("B1")).to eq ["B1", "o"]	
	end

	it "marks with an 'x' the coordinate of a player's shot on a ship" do

		expect(board.register_shot("C4")).to eq ["C4", "x"]	
	end


	# it "can record a player's shot with a marker" do
	# 	expect(board.mark_shot("B4")).to matcher
	# end
end