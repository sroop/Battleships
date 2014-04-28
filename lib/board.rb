require 'ship'
require 'water'
require 'cell'
require_relative './shipbuilder'


class Board

	include ShipBuilder

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
  		ship_length_five
	end

  	def place_battleship
  		ship_length_four
	end

	def place_cruiser
		ship_length_three
	end

	def place_submarine
		ship_length_three
	end

	def place_destroyer
		ship_length_three
	end

	def place_patrol_boat
		ship_length_two
	end

end


