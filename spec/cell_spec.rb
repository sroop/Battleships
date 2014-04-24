require "cell"

describe "Cell" do
  let (:cell) {Cell.new(content)}
  
  it "should be creeated with a watery content " do
  water = double :water
  expect(cell.content).to eq :water
  end

end