module ShipBuilder

	def register_shot(coordinates)
		@grid[coordinates].content.hit!
	end
	
	def random_coordinate_generator
		letter = ("A".."J").to_a.sample
		number = (1..10).to_a.sample.to_s
		random_coordinate = letter + number
		return random_coordinate
	end

	def second_coordinate
		first_spot = random_coordinate_generator.chars
		first_spot[1] = first_spot[1].next
		ship_two = first_spot.join
		return ship_two
	end

	def third_coordinate
		second_spot = second_coordinate.chars
		second_spot[1] = second_spot[1].next
		ship_three = second_spot.join
		return ship_three
	end

	def fourth_coordinate
		third_spot = third_coordinate.chars
		third_spot[1] = third_spot[1].next
		ship_four = third_spot.join
		return ship_four
	end

	def fifth_coordinate
		fourth_spot = fourth_coordinate.chars
		fourth_spot[1] = fourth_spot[1].next
		ship_five = fourth_spot.join
		return ship_five
	end

	def ship_length_two
		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
	end

	def ship_length_three
		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
	end

	def ship_length_four
		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
  		@grid[fourth_coordinate] = Cell.new(Ship.new)
	end

	def ship_length_five
		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
  		@grid[fourth_coordinate] = Cell.new(Ship.new)
  		@grid[fifth_coordinate] = Cell.new(Ship.new)
	end
# LOL
end