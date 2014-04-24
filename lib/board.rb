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

  	def place_ship
  		at_coordinates = random_coordinate_generator
  		@grid[at_coordinates] = Cell.new(Ship.new)
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

end


