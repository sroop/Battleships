module RulesOfWar

	def register_shot(coordinates)
		location = location_at(coordinates)
		return water(coordinates) if empty?(location)
		return hit_ship_at(coordinates) if ship_at?(location)
	end

	def location_at(coordinates)
		@grid[coordinates]
	end

	def empty?(location)
		location == ""
	end

	def ship_at?(location)
		location == "s"
	end

	def water(coordinates)
		@grid[coordinates] = "o"
	end

	def hit_ship_at(coordinates)
		@grid[coordinates] = "x"
	end
end


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

