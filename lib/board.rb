require "RulesOfWar"

class Board
	include RulesOfWar

	attr_reader :player, :grid

	def initialize(player)
		@player = player
		grid_hash
	end

	def grid_hash
		@grid = {}
		('A'..'J').to_a.each{|key| 1.upto(10).each{|num| @grid["#{key}#{num}"] = ''}}
		@grid
	end

	def rows
		@grid.values.each_slice(10).map{|e|e}.transpose
	end

  	def place_ship(at_coordinates)
  		@grid[at_coordinates]='s'
	end
	
end

