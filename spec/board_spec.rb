require 'board'

describe "Board" do

	let(:board) { Board.new("Jimbob") }

	it 'has a player name' do
		expect(board.player).to eq("Jimbob")
	end

	it 'has ten rows' do
		expect(board.rows.count).to eq(10)
	end

	it 'each row has ten elements' do
		expect(board.rows[0].count).to eq(10)
	end

end