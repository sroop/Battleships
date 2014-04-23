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

	it 'can find coordinate A1' do
		expect(board.at_coordinates("A1")).to eq ["A1", ""]
	end
end