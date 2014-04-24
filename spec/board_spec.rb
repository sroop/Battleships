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

	it "marks with an 'o' the coordinate of a player's shot on water" do
		expect(board.register_shot("B1")).to eq "o"
	end

  it "should be able to place a ship on the board" do
    expect(board.place_ship.content.status).to eq "s"
  end

  it "marks with an 'x' the coordinate of a player's shot on a ship" do
    board.stub(:random_coordinate_generator).and_return("C4")
    board.place_ship
    expect(board.grid["C4"].content.status).to eq "s"
    expect(board.register_shot("C4")).to eq 'x'
  end

	it 'can generate the letter J' do
  	board.stub(:random_coordinate_generator).and_return("J1")
  	expect(board.random_coordinate_generator).to eq "J1"
	end


end