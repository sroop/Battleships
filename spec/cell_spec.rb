require "cell"

describe "Cell" do
  let (:water) {double :water}
   let (:ship) {double :ship}
  let (:cell) {Cell.new(water)}
  let (:cell2) {Cell.new(ship)}
 
  it "has watery content when created" do
  	expect(cell.content).to eq water
  end

  it "can have ship content" do
  	expect(cell2.content).to eq ship
  end

end