require 'board'

describe "Board" do

	let(:board) { Board.new("Jimbob") }

	it 'has a player name' do
		expect(board.player).to eq("Jimbob")
	end

	it 'has a grid comprised of 100 keys and values' do
		expect(board.grid_hash.length).to eq 100
	end

	# it 'each row has ten elements' do
	# 	expect(board.rows[0].count).to eq(10)
	# end

	# it 'has ten columns' do
	# 	expect(board.columns.count).to eq(10)
	# end

	# it 'can register a shot at coordinate a1' do
	# 	expect(board.rows[0][0]).to eq("a1")
	# end

end