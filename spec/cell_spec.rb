require "cell"

describe "Cell" do
 
  it "has watery content when created" do
  	cell = Cell.new(:water)
  	expect(cell.content).to eq :water
	end

end