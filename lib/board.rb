require 'ship'
require 'water'
require 'cell'

class Board

	attr_reader :player, :grid

	def initialize(player)
		@player = player
		grid_hash
	end

	def grid_hash
		@grid = {}
		('A'..'J').to_a.each{|key| 1.upto(10).each{|num| @grid["#{key}#{num}"] = Cell.new(Water.new) }}
		@grid
	end

	def rows
		@grid.values.each_slice(10).map{|e|e}.transpose
	end

	def columns
		rows.transpose
	end

  	def place_aircraft_carrier
  		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
  		@grid[fourth_coordinate] = Cell.new(Ship.new)
  		@grid[fifth_coordinate] = Cell.new(Ship.new)
	end

  	def place_battleship
  		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
  		@grid[fourth_coordinate] = Cell.new(Ship.new)
	end

	def place_cruiser
  		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
  		@grid[third_coordinate] = Cell.new(Ship.new)
	end

	def place_submarine
		place_cruiser
	end

	def place_destroyer
		place_cruiser
	end

	def place_patrol_boat
  		@grid[random_coordinate_generator] = Cell.new(Ship.new)
  		@grid[second_coordinate] = Cell.new(Ship.new)
	end


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



	# def next_number_along(at_coordinates)
	# 	split = at_coordinates.chars
	# 	split[1] = split[1].next
	# 	split.join
	# 	return split
	# end


end


