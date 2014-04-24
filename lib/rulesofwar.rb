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