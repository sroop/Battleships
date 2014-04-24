require "ship"

describe "Ship" do
  
  let (:ship) {Ship.new}

  it "should be created with a status of 's'"  do
    expect(ship.status).to eq "s"
  end

  it "should change status to x when hit by shot" do
    ship.hit!
      expect(ship.status).to eq "x"
  end



end