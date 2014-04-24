require "water"

describe "Water" do
  let (:water) {Water.new}

  it "should have a status of empty " do
    expect(water.status).to eq " "
  end

  it "should change status to o  when it gets hit" do
  	water.hit!
  	  expect(water.status).to eq "o"
  end

end